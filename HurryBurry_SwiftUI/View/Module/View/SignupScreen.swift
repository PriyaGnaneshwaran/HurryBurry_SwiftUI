//
//  SignupScreen.swift
//  HurryBurry_SwiftUI
//
//  Created by Priya Gnaneshwaran on 16/04/25.
//

import SwiftUI

struct SignupScreen: View {
    
    @State private var nameField = ""
    @State private var emailField = ""
    @State private var passwordField = ""
    @State private var reEnterpasswordField = ""
    @State private var isPasswordVisible = false
    
    var body: some View {
        
        ZStack {
            VStack{
                VStack {
                    Text("Sign Up")
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                    
                    Text("Please sign up to get started")
                        .foregroundStyle(Color.white).opacity(0.7)
                        .fontWeight(.bold)
                        .font(.system(size: 15))
                }
                .padding(.all,40)
                
                ZStack(alignment: .top){
                    RoundedRectangle(cornerRadius: 35)
                        .fill( .white)
                        .ignoresSafeArea()
                    VStack(alignment: .leading,spacing: 20) {
                        Text("NAME")
                            .fontWeight(.semibold)
                            .padding(.top)
                        
                        TextField(
                            "Enter Name",
                            text: $nameField
                        )
                        .padding()
                        .frame(height: 60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        
                        Text("EMAIL")
                            .fontWeight(.semibold)
                            .padding(.top)
                        
                        TextField(
                            "Enter Email",
                            text: $emailField
                        )
                        .padding()
                        .frame(height: 60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        
                        
                        Text("PASSWORD")
                            .fontWeight(.semibold)
                            .padding(.top)
                        
                        HStack {
                            Group {
                                if isPasswordVisible {
                                    TextField("Enter PASSWORD", text: $passwordField)
                                } else {
                                    SecureField("Enter PASSWORD", text: $passwordField)
                                }
                            }
                            .padding(.leading, 10)
                            
                            Button(action: {
                                isPasswordVisible.toggle()
                            }) {
                                Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 10)
                            }
                        }
                        .frame(height: 60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        
                        Text("RE-TYPE PASSWORD")
                            .fontWeight(.semibold)
                            .padding(.top)
                        
                        TextField(
                            "Re Enter PASSWORD",
                            text: $reEnterpasswordField
                        )
                        .padding()
                        .frame(height: 60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        
                        Button(action: {
                        }) {
                            Text("Sign Up")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.top, 20)
                        
                        
                    }
                    
                    .padding(.leading,20)
                    .padding(.trailing,20)
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color.black
                    .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    SignupScreen()
}
