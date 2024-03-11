//
//  StartScreen.swift
//  YouJournal
//
//  Created by Luke Trotman on 4/3/2024.
//

import SwiftUI

struct StartScreen: View {
  var body: some View {
    VStack(spacing: 0) {
      VStack(spacing: 70) {
        VStack(spacing: 7) {
          VStack(spacing: 10) {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 200, height: 101.92)
              .background(
                Image("YJLogo")
              )
          }
          .shadow(
            color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
          )
          Text("YouJournal")
            .font(Font.custom("MontserratAlternates-regular", size: 36).weight(.bold))
            .foregroundColor(.black)
        }
        Text("The World’s First\nAI Powered Video Journal\nThat Adapts To You")
          .font(
            Font.custom("Montserrat Alternates", size: 20).weight(.semibold)
          )
          .tracking(0.40)
          .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
        HStack(spacing: 10) {
          Text("Start")
            .font(Font.custom("Urbanist", size: 18).weight(.semibold))
            .foregroundColor(.white)
        }
        .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 32))
        .frame(width: 310)
        .background(.black)
        .cornerRadius(11)
        HStack(spacing: -48) {
          Text("Already have an account? ")
            .font(Font.custom("Montserrat Alternates", size: 14))
            .tracking(0.28)
            .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
          Text("Log In")
            .font(
              Font.custom("Montserrat Alternates", size: 14).weight(.semibold)
            )
            .tracking(0.28)
            .foregroundColor(Color(red: 0.85, green: 0.76, blue: 0.65))
        }
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    .padding(EdgeInsets(top: 137, leading: 38, bottom: 138, trailing: 37))
    .frame(width: 430, height: 932)
    .background(.white);
  }
}

struct StartScreen_Previews: PreviewProvider {
  static var previews: some View {
    StartScreen()
  }
}
