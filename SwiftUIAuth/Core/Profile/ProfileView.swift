//
//  ProfileView.swift
//  SwiftUIAuth
//
//  Created by Palatip Jantawong on 19/2/2567 BE.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List{
            Section{
                HStack {
                    Text(User.Mock_User.initials)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 72, height: 72)
                        .background(.gray)
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 4){
                        Text(User.Mock_User.fullname)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top,4)
                        
                        Text(User.Mock_User.email)
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                }
            }
            
            Section("General") {
                HStack {
                    SettingsRowView(imageName: "gear",
                                    title: "Version",
                                    tintColor: .gray)
                    Spacer()
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
            }
            
            Section("Account") {
                Button(action: {
                    
                }, label: {
                    SettingsRowView(imageName: "arrow.left.circle.fill",
                                    title: "Sign out",
                                    tintColor: .red)
                })
                
                Button(action: {
                    
                }, label: {
                    SettingsRowView(imageName: "xmark.circle.fill",
                                    title: "Delete Account",
                                    tintColor: .red)
                })
            }
        }
    }
}

#Preview {
    ProfileView()
}
