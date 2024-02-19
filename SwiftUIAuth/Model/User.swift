//
//  User.swift
//  SwiftUIAuth
//
//  Created by Palatip Jantawong on 19/2/2567 BE.
//

import Foundation

struct User: Identifiable, Codable{
    let id: String
    let fullname: String
    let email: String
    
    var initials: String{
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname) {
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        
        return ""
    }
}


extension User{
    static let Mock_User = User(id: NSUUID().uuidString, fullname: "Palatip Jantawong", email: "palatipjant@gmail.com")
}
