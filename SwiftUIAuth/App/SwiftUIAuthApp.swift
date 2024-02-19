//
//  SwiftUIAuthApp.swift
//  SwiftUIAuth
//
//  Created by Palatip Jantawong on 18/2/2567 BE.
//

import SwiftUI

@main
struct SwiftUIAuthApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
