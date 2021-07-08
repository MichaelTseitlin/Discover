//
//  RegisterView.swift
//  Discover
//
//  Created by Michael Tseitlin on 08.07.2021.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var login = String()
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            TextField("Login", text: $login)
                .padding()
                .border(Color.black, width: 2)
            NavigationLink(destination: HomeView()) {
                
                Text("SIGN UP")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .foregroundColor(.white)
            .font(.caption.bold())
            .cornerRadius(6)
            
            Text("By signing up, you agree to Photo’s Terms of Service and Privacy Policy.")
                .padding(.top)
                .font(.footnote)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Register")
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RegisterView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
                .previewDisplayName("iPhone 12 Pro Max")
            
        }
        
        NavigationView {
            RegisterView()                        .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .previewDisplayName("iPhone 8")
        }    }
}
