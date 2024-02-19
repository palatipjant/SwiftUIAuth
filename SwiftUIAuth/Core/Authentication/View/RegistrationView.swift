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
    @EnvironmentObject var viewModel: AuthViewModel
    
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
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled(true)
                
                InputView(text: $fullname,
                          title: "Fullname",
                          placeholder: "Enter your full name")
                .autocorrectionDisabled(true)
                
                InputView(text: $password,
                          title: "Password",
                          placeholder: "Enter your password",
                          isSecureField: true)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled(true)
                
                ZStack(alignment: .trailing, content: {
                    InputView(text: $confirmpassword,
                              title: "Confirm Password",
                              placeholder: "Confirm your password",
                              isSecureField: true)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
                    
                    if !password.isEmpty && !confirmpassword.isEmpty {
                        if password == confirmpassword {
                            Image(systemName: "checkmark.circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundStyle(.green)
                        } else {
                            Image(systemName: "checkmark.circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundStyle(.red)
                        }
                    }
                })
                
            }.padding(.horizontal)
                .padding(.top,12)
            //Sign in button
            Button(action: {
                Task{
                    try await viewModel.createUser(withEmail: email,
                                                   password: password,
                                                   fullName: fullname)
                }
            }, label: {
                Label("Sign up", systemImage: "arrow.right")
                    .foregroundStyle(.white)
                    .frame(width: UIScreen.main.bounds.width-32, height: 48)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1.0 : 0.5)
            .padding(.top, 24)
            
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

// MARK: - AuthenticationFormProtocol
extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        && confirmpassword == password
        && !fullname.isEmpty
    }
}

#Preview {
    RegistrationView()
}
