//
//  TextFieldView.swift
//  HurryBurry_SwiftUI
//
//  Created by Priya Gnaneshwaran on 18/04/25.
//
import SwiftUI

struct TextFieldView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var isPasswordVisible: Bool = false
    
    var body: some View {
            HStack {
                VStack (alignment: .leading, spacing: 12) {
                    Text("PASSWORD")
                        .foregroundStyle(.black)
                        .font(.system(size: 16))
                        .fontWeight(.regular)
                        .padding(.horizontal)
                        .padding(.top, 30)
                    
                    ZStack {
                        if isPasswordVisible {
                            TextField("Password", text: $password)
                                .foregroundStyle(.black)
                                .font(.system(size: 16))
                                .fontWeight(.regular)
                                .frame(height: 40)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.gray.opacity(0.2)) // Background
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.gray.opacity(0.6), lineWidth: 1)) // Border)
                        } else {
                            SecureField("Password", text: $password)
                                .foregroundStyle(.black)
                                .font(.system(size: 16))
                                .fontWeight(.regular)
                                .frame(height: 40)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.gray.opacity(0.2)) // Background
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.gray.opacity(0.6), lineWidth: 1)) // Border)
                        }
                        Spacer()
                        Button(action: {
                            isPasswordVisible.toggle()
                        }) {
                            Image(systemName: isPasswordVisible ? "eye:slash" : "eye")
                                .foregroundStyle(Color.gray)
                        }
                        .padding(.trailing)
                        .frame(height: 40)
                    }
                }
                .padding(.horizontal)
            }
            
            VStack (alignment: .leading, spacing: 12) {
                Text("RE-TYPE PASSWORD")
                    .foregroundStyle(.black)
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .padding(.horizontal)
                    .padding(.top, 30)
                
                SecureField("Confirm Password", text: $confirmPassword)
                    .foregroundStyle(.black)
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .frame(height: 40)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.gray.opacity(0.2)) // Background
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray.opacity(0.6), lineWidth: 1) // Border
                    )
                
            }
            .padding(.horizontal)
        }
    }
