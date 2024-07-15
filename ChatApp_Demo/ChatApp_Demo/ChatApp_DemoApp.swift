//
//  ChatApp_DemoApp.swift
//  ChatApp_Demo
//
//  Created by sankar on 02/07/24.
//

import SwiftUI
import Firebase

@main
struct ChatApp_DemoApp: App {
    let persistenceController = PersistenceController.shared

    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
