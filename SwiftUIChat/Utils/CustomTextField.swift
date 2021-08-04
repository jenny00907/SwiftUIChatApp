//
//  CustomTextField.swift
//  SwiftUIChat
//
//  Created by Jenny Woorim Lee on 2021/08/04.
//

import SwiftUI

struct CustomTextField: View {
    let imageName: String
    let placeholderText: String
    let isSecureText: Bool
    @Binding var text: String
    
    var body: some View {
        VStack(spacing:16) {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
            
            
            if isSecureText {
                SecureField(placeholderText, text: $text)
            } else {
                TextField(placeholderText, text: $text)
            }
        }
        Divider()
            .background(Color(.darkGray))
    
        }
    }
}
