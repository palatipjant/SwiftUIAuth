//
//  ContentView.swift
//  SwiftUIAuth
//
//  Created by Palatip Jantawong on 18/2/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                ProfileView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
