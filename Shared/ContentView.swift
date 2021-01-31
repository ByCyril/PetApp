//
//  ContentView.swift
//  Shared
//
//  Created by Cyril Garcia on 1/25/21.
//

import SwiftUI
import CoreData
import AuthenticationServices

struct ContentView: View {
    var body: some View {
        
        VStack {
            Spacer()
            SignInWithApple().frame(width: 280, height: 60)
        }
    }
    
    func handleSignIn() {
        let request = ASAuthorizationAppleIDProvider().createRequest()
        request.requestedScopes = [.fullName, .email]
        
        let authController = ASAuthorizationController(authorizationRequests: [request])

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
    }
}

