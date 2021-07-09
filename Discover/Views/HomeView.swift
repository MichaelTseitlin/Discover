//
//  HomeView.swift
//  Discover
//
//  Created by Michael Tseitlin on 08.07.2021.
//

import SwiftUI

struct HomeView: View {
    private let images = ["image-0", "image-1", "image-2", "image-3", "image-4", "image-5", "image-6"]
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("What’s new today".uppercased())
                            .font(.caption2.bold())
                            .padding(.bottom)
                        
                        Image("image-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: geo.size.width)
                            .clipped()
                        
                        HStack {
                            Image("logoAvatar")
                            
                            VStack(alignment: .leading) {
                                Text("Pawel Czerwinski")
                                    .bold()
                                Text("@pawel_czerwinski")
                                    .font(.callout)
                            }
                        }
                        
                        Spacer(minLength: 48)
                        
                        Text("Browse all".uppercased())
                            .font(.caption2.bold())
                        
                        HStack(alignment: .top) {
                            VStack {
                                Image("image-0")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image("image-1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image("image-2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image("image-3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            
                            VStack {
                                Image("image-4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image("image-5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image("image-6")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image("image-7")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                        
                        NavigationLink(destination: Text("Destination")) {
                            Text("see more".uppercased())
                                .font(.caption.bold())
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .foregroundColor(.black)
                                .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.black, lineWidth: 2))
                        }
                        .padding(.top, 32)
                        .padding(.bottom, 32)
                    }
                    .padding()
                }
            }
            .navigationTitle("Discover")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
