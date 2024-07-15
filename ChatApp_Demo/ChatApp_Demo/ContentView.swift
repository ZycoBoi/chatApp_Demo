import SwiftUI
import CoreData

struct ContentView: View {
    
    @StateObject var messagesManager = MessagesManager()
    @State private var path = NavigationPath()
    @State private var showMenu = false
    var body: some View {
        
        NavigationStack(path: $path) {
            ZStack(alignment: .topTrailing) {
                
                VStack(alignment: .center){
                    TitleRow(action: {
                        withAnimation {
                            showMenu.toggle()
                        }
                    })
                    .background(Color(.systemCyan).opacity(0.3))
                    ScrollViewReader { proxy in
                        ScrollView {
                            ForEach(messagesManager.messages, id: \.id) { text in
                                withAnimation {
                                    MessageBubble(message: text)
                                }
                            }
                            
                        }.padding(.top, 10)
                            .background(Color(.white))
                           
                            .onChange(of: messagesManager.lastMessageID) { id in
                                withAnimation {
                                    proxy.scrollTo(id, anchor: .bottom)
                                }
                                
                            }
                    }
                    .edgesIgnoringSafeArea(.bottom)
                        
                    
                    MessageField()
                        .environmentObject(messagesManager)
                }
                if showMenu {
                    VStack(spacing: 10) {
                        Button(action: {
                            path.append("Profile")
                            showMenu = false
                        }) {
                            Text("Profile")
                                .foregroundColor(Color(.systemGray6))
                                .padding(5)
                        }
                        
                        Divider()
                        
                        Button(action: {
                            // Handle Settings action
                            showMenu = false
                        }) {
                            Text("Settings")
                                .foregroundColor(Color(.systemGray6))
                                .padding(5)
                            
                        }
                    }
                    .padding(.vertical, 10)
                    .frame(width: 200)
                    .background(
                        Rectangle()
                            .foregroundColor(.clear)
                        
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color(.black))
                                    .opacity(0.4)
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder(Color(.systemGray6).opacity(0.8), lineWidth: 1)
                            )
                        
                            .cornerRadius(20)
                            .shadow(color: Color(.gray), radius: 2, x: 0 , y: 2)
                    ).padding(.trailing, 40)
                        .padding(.top, 50)
                }
            } .navigationBarHidden(true)
            .navigationDestination(for: String.self) { value in
                if value == "Profile" {
                    BioView()
                }
                   
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationBarTitle("chat")
            .foregroundColor(.gray)
            .font(.callout)
        }
        
    }
    
}

//}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
