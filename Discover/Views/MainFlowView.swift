//
//  MainFlowView.swift
//  Discover
//
//  Created by Michael Tseitlin on 09.07.2021.
//

import SwiftUI

struct MainFlowView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Image(systemName: "house") }
            Text("Search")
                .tabItem { Image(systemName: "magnifyingglass") }
            Text("Add")
                .tabItem { Image(systemName: "plus") }
            Text("Message")
                .tabItem { Image(systemName: "message") }
            Text("Profile")
                .tabItem { Image(systemName: "person") }
        }
    }
}

struct MainFlowView_Previews: PreviewProvider {
    static var previews: some View {
        MainFlowView()
    }
}
