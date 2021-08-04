//
//  LoginView.swift
//  SwiftUIChat
//
//  Created by Jenny Woorim Lee on 2021/08/02.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 12) {
                    HStack { Spacer() }
                    
                    Text("Hello!")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Welcome Back")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.blue)
                    
                    VStack(spacing: 40) {
                        CustomTextField(imageName: "envelope", placeholderText: "Email",
                                        isSecureText: false, text: $email)
                        CustomTextField(imageName: "lock", placeholderText: "password",
                                        isSecureText: true, text: $password)
                    }
                    .padding([.top, .horizontal], 32)
                }
                .padding(.leading)
                
                HStack {
                    Spacer()
                        
                    NavigationLink(
                        destination: Text("Reset password.."),
                        label: {
                            Text("Forgot Password?")
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.top)
                                .padding(.trailing, 28)
                        })
                }
                Button(action: {
                    print("Handle sign up...")
                }, label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                })
                .shadow(color: .gray, radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                Spacer()
                
                NavigationLink(
                    destination: RegistrationView()
                        .navigationBarBackButtonHidden(true),
                    label: {
                        HStack {
                            Text("Don't have an accout?")
                                .font(.system(size: 14))
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                    }).padding(.bottom, 32)
            }
        }
        .padding(.top, -56)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

