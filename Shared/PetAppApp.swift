//
//  PetAppApp.swift
//  Shared
//
//  Created by Cyril Garcia on 1/25/21.
//

import SwiftUI

@main
struct PetAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
