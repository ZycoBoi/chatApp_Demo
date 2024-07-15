//
//  TitleRow.swift
//  ChatApp_Demo
//
//  Created by sankar on 02/07/24.
//

import SwiftUI

struct TitleRow: View {
    var imageURL = URL(string: "https://media.istockphoto.com/id/467584478/photo/pink-hair-manga-style-girl-holding-bow-tie.jpg?s=2048x2048&w=is&k=20&c=qSlNHr3bTOKcujMiMKEMpHsRMb4BZvZV6-NmpQkeesg=")
    
    var name = "Bunny"
    @State private var isProfileActive = false
    var action: () -> Void
    var body: some View {
        
            HStack(spacing: 20){
                AsyncImage(url: imageURL){ image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .cornerRadius(50)
                        .shadow( color: Color(.systemCyan), radius: 5, x: 1 , y: 3)
                        .padding(.leading)
                    
                } placeholder: {
                    ProgressView()
                }
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title).bold()
                        .foregroundColor(Color(.systemCyan))
                    
                    Text("Online")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                                
                Image(systemName: "phone.fill")
                    .foregroundColor(.green)
                    .padding(10)
                    .background(.white)
                    .cornerRadius(50)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                Button(action: action) {
                    Image(systemName: "ellipsis")
                        .font(.title)
                        .foregroundColor(.gray)
                        .padding(10)
                }
//                Menu {
//                    Button(action: {
//                        isProfileActive = true
//                    }) {
//                        Label("Profile", systemImage: "person")
//                    }
//                    Button(action: {
//                        // Handle Settings action
//                    }) {
//                        Label("Settings", systemImage: "gear")
//                    }
//                } label: {
//                    Image(systemName: "ellipsis")
//                        .font(.title)
//                        .foregroundColor(.gray)
//                }
                NavigationLink(destination: MainTabbedView(), isActive: $isProfileActive) {
                    EmptyView()
                }
                .hidden()

            }.padding(15)
//        }.navigationBarHidden(true)
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow(action: {})
            .background(Color(.systemCyan))
    }
}
