//
//  RegistrationView.swift
//  SwiftUIAuth
//
//  Created by Palatip Jantawong on 19/2/2567 BE.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmpassword = ""
    
    @Environment(\.dismiss) var dismiss 
    
    var body: some View {
        VStack{
            //Image
            Image("firebase")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 120)
                .padding(.vertical)
            //Form
            VStack(spacing:24) {
                InputView(text: $email,
                          title: "Email Address",
                          placeholder: "example@example.com")
                .textInputAutocapitalization(.none)
                
                InputView(text: $fullname,
                          title: "Fullname",
                          placeholder: "Enter your full name")
                
                InputView(text: $password,
                          title: "Password",
                          placeholder: "Enter your password",
                          isSecureField: true)
                .textInputAutocapitalization(.none)
                
                InputView(text: $confirmpassword,
                          title: "Password",
                          placeholder: "Confirm your password",
                          isSecureField: true)
                .textInputAutocapitalization(.none)
                
            }.padding(.horizontal)
                .padding(.top,12)
            //Sign in button
            Button(action: {
                print("sign user up")
            }, label: {
                Label("Sign up", systemImage: "arrow.right")
                    .foregroundStyle(.white)
                    .frame(width: UIScreen.main.bounds.width-32, height: 48)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }).padding(.top, 24)
            
            Spacer()
            
            Button(action: {
                dismiss()
            }, label: {
                HStack(spacing: 3){
                    Text("Already have an account?")
                    Text("Sign in")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            })
        }
    }
}

#Preview {
    RegistrationView()
}
