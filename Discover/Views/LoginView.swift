//
//  LoginView.swift
//  Discover
//
//  Created by Michael Tseitlin on 08.07.2021.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
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
            
            Button("Log in") {
                
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
        .navigationTitle("Log in")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
                .previewDisplayName("iPhone 12 Pro Max")
            
        }
        
        NavigationView {
            LoginView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .previewDisplayName("iPhone 8")
        }
    }
}
