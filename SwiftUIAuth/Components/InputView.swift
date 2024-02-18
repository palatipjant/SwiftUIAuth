//
//  InputView.swift
//  SwiftUIAuth
//
//  Created by Palatip Jantawong on 18/2/2567 BE.
//

import SwiftUI

struct InputView: View {
    
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .foregroundStyle(.gray)
                .fontWeight(.bold)
                .font(.footnote)
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
            }
            
            Divider()
        }
    }
}

#Preview {
    InputView(text: .constant(""), title: "Email Address", placeholder: "Name@Example.com")
}
