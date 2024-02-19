//
//  AuthViewModel.swift
//  SwiftUIAuth
//
//  Created by Palatip Jantawong on 19/2/2567 BE.
//

import Foundation
import Firebase
 
class AuthViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        
    }
    
    func signIn(withEmail: String, password: String) async throws {
        print("sign in")
    }
    
    func createUser(withEmail: String, password: String, fullName: String) async throws{
        print("create user")
    }
    
    func sighOut() {
        
    }
    
    func DeleteAccount() {
        
    }
    
    func fetchData() async {
        
    }
}
