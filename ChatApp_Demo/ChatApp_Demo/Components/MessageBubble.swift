//
//  MessageBubble.swift
//  ChatApp_Demo
//
//  Created by sankar on 02/07/24.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showtime = false
    
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack{
                Text(message.text)
                    .padding()
                    .foregroundColor(message.received ? Color(.gray) : Color(.gray))
                    .font(.subheadline)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(message.received ? Color(.systemGray6) : Color(.systemGray6))
                            .opacity(0.2)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .strokeBorder(message.received ? Color(.systemGray6) : Color(.systemGray6), lineWidth: 2)
                    )

                    .cornerRadius(20)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .shadow(color: message.received ? Color(.systemPurple) : Color(.systemCyan), radius: 2, x: 0, y: 2)
            .onTapGesture {
                showtime.toggle()
            }.frame(maxWidth: .infinity,maxHeight: .infinity ,alignment:  message.received ? .leading : .trailing)
                .padding(message.received ? .leading : .trailing)
                .padding(.horizontal, 10)
            
            if showtime {
                withAnimation(.easeInOut){
                    Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                        .font(.caption2)
                        .foregroundColor(.gray)
                        .padding(message.received ? .leading : .trailing)
                        .padding(.horizontal, 10)
                    
                }
               
            }
        }
     }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "1234", text: "Haii, Am I Working Chat App Ddemo", received: false, timestamp: Date()))
    }
}
