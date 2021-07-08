//
//  LoggedOutView.swift
//  Discover
//
//  Created by Michael Tseitlin on 08.07.2021.
//

import SwiftUI

struct LoggedOutView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                ZStack {
                    ZStack(alignment: .bottomLeading) {
                        Image("logoBackground")
                            .resizable()
                        HStack {
                            Image("logoAvatar")
                            VStack(alignment: .leading) {
                                Text("Pawel Czerwinski")
                                    .bold()
                                Text("@pawel_czerwinski")
                                    .font(.callout)
                            }
                        }
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 20, trailing: 0))
                    }
                    Image("logo")
                }
                HStack(alignment: .center, spacing: 9) {
                    NavigationLink(destination: LoginView()) {
                        Text("LOG IN")
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.black, lineWidth: 2))
                    .font(.caption.bold())
                    
                    Button("REGISTER") {
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(6)
                    .font(.caption.bold())
                }
                .padding([.horizontal, .bottom])
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct LoggedOutView_Previews: PreviewProvider {
    static var previews: some View {
        LoggedOutView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
            .previewDisplayName("iPhone 12 Pro Max")
        
        LoggedOutView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
    }
}
