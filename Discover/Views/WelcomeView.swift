//
//  WelcomeView.swift
//  Discover
//
//  Created by Michael Tseitlin on 09.07.2021.
//

import SwiftUI

struct WelcomeView: View {
    @ObservedObject private var auth = Auth()
    
    var body: some View {
        if auth.token == nil {
            LoggedOutView(auth: auth)
        } else {
            MainFlowView()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
