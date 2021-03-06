//
//  RegistrationView.swift
//  SwiftUIChat
//
//  Created by Jenny Woorim Lee on 2021/08/02.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 12) {
                HStack {Spacer()}
                
                Text("Get Started.")
                    .font(.largeTitle)
                    .bold()
                
                Text("Create your account.")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                
                VStack(spacing: 40) {
                    CustomTextField(imageName: "envelope", placeholderText: "Email",
                                    isSecureText: false, text: $email)
                    CustomTextField(imageName: "person", placeholderText: "username",
                                    isSecureText: false, text: $username)
                    CustomTextField(imageName: "person", placeholderText: "Full name",
                                    isSecureText: false, text: $fullname)
                    CustomTextField(imageName: "lock", placeholderText: "password",
                                    isSecureText: true, text: $password)
                }
                .padding([.top, .horizontal], 32)
            }
            .padding(.leading)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .padding()
            })
            .padding(.top, 24)
            .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
            
            Spacer()
            
            Button(action: {mode.wrappedValue.dismiss()}, label: {
                HStack {
                    Text("Already have an account?")
                        .font(.system(size: 14))
                    Text("Sign In")
                        .font(.system(size: 14, weight: .semibold))
                }
            })
            .padding(.bottom, 32)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
