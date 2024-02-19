//
//  SettingsRowView.swift
//  SwiftUIAuth
//
//  Created by Palatip Jantawong on 19/2/2567 BE.
//

import SwiftUI

struct SettingsRowView: View {
    
    let imageName: String
    let title: String
    let tintColor: Color
    
    var body: some View {
        HStack(spacing: 12, content: {
            Image(systemName: imageName)
                .imageScale(.small)
                .font(.title)
                .foregroundStyle(tintColor)
            Text(title)
                .font(.subheadline)
                .foregroundStyle(.black)
        })
    }
}

#Preview {
    SettingsRowView(imageName: "gear", title: "Version", tintColor: .blue)
}
