//
//  CompleteSignUpView.swift
//  YouJournal
//
//  Created by Luke Trotman on 4/3/2024.
//

import SwiftUI

struct CompleteSignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            // Title "Complete Your Account"
            Text("Complete Your Account")
                .font(Font.custom("MontserratAlternates-SemiBold", size: 25))
                .padding(.bottom, 50)
            
            // Email text field
            TextField("example@gmail.com", text: $email)
                .font(Font.custom("MontserratAlternates-Regular", size: 18))
                .padding()
                .background(Color.white)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1))
                .padding(.horizontal, 24)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            
            // Password text field
            SecureField("Enter your password", text: $password)
                .font(Font.custom("MontserratAlternates-Regular", size: 18))
                .padding()
                .background(Color.white)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1))
                .padding(.horizontal, 24)
                .padding(.top, 16)
            
            // Start button
            Button(action: {
                // Action for the Start button
            }) {
                Text("Start")
                    .font(Font.custom("MontserratAlternates-SemiBold", size: 18))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(8)
            }
            .padding(.horizontal, 24)
            .padding(.top, 50)
            
            Spacer()
            
        }
        .navigationBarBackButtonHidden(true)
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
