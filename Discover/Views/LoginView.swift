//
//  LoginView.swift
//  Discover
//
//  Created by Michael Tseitlin on 08.07.2021.
//

import SwiftUI

struct LoginView: View {
    
    enum LoginState {
        case login, register
    }
    
    var loginState: LoginState
    
    @State private var email = ""
    @State private var password = ""
    
    private var buttonTitle: String {
        loginState == .login ? "Log in" : "Next"
    }
    
    private var navigationTitle: String {
        loginState == .login ? "Log in" : "Register"
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            TextField("Email", text: $email)
                .padding()
                .border(Color.black, width: 2)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            
            SecureField("Password", text: $password)
                .padding()
                .border(Color.black, width: 2)
                .textContentType(.password)
            
            NavigationLink(destination: destinationView) {
                Text(buttonTitle)
            }
            
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .foregroundColor(.white)
            .font(.callout.bold())
            .cornerRadius(6)
            
            Spacer()
        }
        .padding()
        .navigationTitle(navigationTitle)
    }
    
    @ViewBuilder
    var destinationView: some View {
        if loginState == .login {
            HomeView()
        } else {
            RegisterView()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginView(loginState: .login)
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
                .previewDisplayName("iPhone 12 Pro Max")
            
        }
        
        NavigationView {
            LoginView(loginState: .register)
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .previewDisplayName("iPhone 8")
        }
    }
}
