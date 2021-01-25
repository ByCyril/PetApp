//
//  PetAppApp.swift
//  PetAppWatchOS Extension
//
//  Created by Cyril Garcia on 1/25/21.
//

import SwiftUI

@main
struct PetAppApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
