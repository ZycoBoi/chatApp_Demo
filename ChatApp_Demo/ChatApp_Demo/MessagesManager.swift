//
//  MessagesManager.swift
//  ChatApp_Demo
//
//  Created by sankar on 03/07/24.
// 

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class MessagesManager: ObservableObject {
    
    @Published private(set) var messages: [Message] = []
    @Published private(set) var lastMessageID = ""
    let db = Firestore.firestore()
    
    init() {
        getMessages()
    }
    
    func getMessages() {
        db.collection("messages").addSnapshotListener{ QuerySnapshot, error in
            guard let documents = QuerySnapshot?.documents else {
                print("Error : \(error)")
                return
            }
            
            self.messages = documents.compactMap { document -> Message? in
                do {
                    return try document.data(as: Message.self)
                    
                } catch {
                    print("Error Decoding Document into Message: \(error)")
                    return nil
                }
            }
            
            self.messages.sort { $0.timestamp < $1.timestamp }
            if let id = self.messages.last?.id {
                self.lastMessageID = id
            }
        }
        
       
    }
     func sendMessage(text: String) {
        do {
            
            let newMessage = Message(id: "\(UUID())", text: text, received: false, timestamp: Date())
            try db.collection("messages").document().setData(from: newMessage)
            
        } catch {
            print("Error Adding Message to Firestore: \(error)")
        }
    }
    
}

