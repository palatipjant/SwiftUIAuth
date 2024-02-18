//
//  LoginView.swift
//  SwiftUIAuth
//
//  Created by Palatip Jantawong on 18/2/2567 BE.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationStack{
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
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter youe password",
                              isSecureField: true)
                    .textInputAutocapitalization(.none)
                    
                }.padding(.horizontal)
                //Sign in button
                Button(action: {
                    print("user login")
                }, label: {
                    Label("Sign in", systemImage: "arrow.right")
                        .foregroundStyle(.white)
                        .frame(width: UIScreen.main.bounds.width-32, height: 48)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }).padding(.top, 24)
                
                Spacer()
                
                //Sign up button
                NavigationLink {
                    
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }

            }
        }
    }
}

#Preview {
    LoginView()
}
