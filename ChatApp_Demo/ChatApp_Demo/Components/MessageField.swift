//
//  MessageField.swift
//  ChatApp_Demo
//
//  Created by sankar on 02/07/24.
//

import SwiftUI

struct MessageField: View {
    @EnvironmentObject var messageManager: MessagesManager
    @State private var message = ""
    var body: some View {
        HStack {
            CustomTextField(placeholder: Text("Enter your Message Here").font(.subheadline), text: $message )
            Button{
                messageManager.sendMessage(text: message)
                message = " "
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(12)
                    .background(
                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(Color(.white))
                            .opacity(0.2)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .strokeBorder(Color(.systemGray6), lineWidth: 2)
                    )

                    .cornerRadius(50)
                    .shadow(color: Color(.systemCyan), radius: 2, x: 0 , y: 2)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(
            RoundedRectangle(cornerRadius: 50)
                .foregroundColor(Color(.white))
                .opacity(0.2)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 50)
                .strokeBorder(Color(.systemGray6), lineWidth: 2)
        )
        .cornerRadius(50)
        .padding(.horizontal)
        .shadow(color: Color(.systemGray4), radius: 2, x: 0 , y: 2)
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField()
            .environmentObject(MessagesManager())
    }
}


struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = {_ in}
    var commit: () -> () = {}
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
