//
//  GetNameView.swift
//  YouJournal
//
//  Created by Luke Trotman on 4/3/2024.
//

import SwiftUI

struct GetNameView: View {
    @State private var name: String = ""

    var body: some View {
        ZStack {
            Text("What Should We Call You?")
                .font(Font.custom("MontserratAlternates-SemiBold", size: 25))
                .tracking(0.50)
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                .offset(x: -1, y: -254)

            TextField("Enter your name", text: $name)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(Font.custom("MontserratAlternates-Regular", size: 16))
                .tracking(0.32)
                .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                .padding(16)
                .frame(width: 382, height: 51)
                .background(Color.white)
                .cornerRadius(11)
                .overlay(
                    RoundedRectangle(cornerRadius: 11)
                        .stroke(Color(red: 0.11, green: 0.11, blue: 0.11), lineWidth: 0.50)
                )
                .offset(x: 5, y: -163.50)

            Text("Next")
                .font(Font.custom("MontserratAlternates-Regular", size: 18))
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 32))
                .frame(height: 54)
                .frame(width:350)
                .background(Color.black)
                .cornerRadius(11)
                .offset(x: 0, y: 375)

            Rectangle()
                .fill(Color.clear)
                .frame(width: 437, height: 7)
                .background(Color(red: 0.94, green: 0.94, blue: 0.94))
                .cornerRadius(31)
                .offset(x: 0.50, y: -385.50)

            Rectangle()
                .fill(Color.clear)
                .frame(width: 90, height: 7)
                .background(Color.black)
                .cornerRadius(31)
                .offset(x: -173, y: -385.50)

        }
        .frame(width: 430, height: 932)
        .background(Color.white)
    }
}

struct GetNameView_Previews: PreviewProvider {
    static var previews: some View {
        GetNameView()
    }
}
