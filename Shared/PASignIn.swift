//
//  PASignIn.swift
//  PetApp
//
//  Created by Cyril Garcia on 1/30/21.
//

import Foundation
import AuthenticationServices
import SwiftUI

final class SignInWithApple: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {

        return ASAuthorizationAppleIDButton()
    }
    
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {
    }
}

final class PASignIn: NSObject, ASAuthorizationControllerDelegate {
    
    private let view: ContentView
    
    init(_ view: ContentView) {
        self.view = view
    }
    
    func setupProviderLoginView() {
        let authorizationButton = ASAuthorizationAppleIDButton()
        //        authorizationButton.addTarget(self, action: #selector(handleAuthorizationAppleIDButtonPress), for: .touchUpInside)
        //        self.loginProviderStackView.addArrangedSubview(authorizationButton)
    }
    
    func handleAuthPress() {
        
        let request = ASAuthorizationAppleIDProvider().createRequest()
        request.requestedScopes = [.fullName, .email]
        
        let authController = ASAuthorizationController(authorizationRequests: [request])
        //        authController.delegate = self
        //        authController.presentationContextProvider = self
        authController.performRequests()
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        
    }
    
}
