//
//  UserPreferenceView.swift
//  YouJournal
//
//  Created by Luke Trotman on 4/3/2024.
//

import SwiftUI

struct UserPreferenceView: View {
    @State private var selection: Set<String> = []

    let options = ["Understand Yourself", "Ignite Your Motivation", "Healing & Resilience", "Just Explore"]
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Choose Your Focus")
                    .font(Font.custom("MontserratAlternates-SemiBold", size: 25))
                    .foregroundColor(Color.black)
                Spacer()
            }
            .padding(.vertical)

            Text("Select All That Apply")
                .font(Font.custom("MontserratAlternates-Regular", size: 16))
                .foregroundColor(Color.gray)
                .padding(.bottom, 30)

            Spacer()

            LazyVGrid(columns: [GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 20)], spacing: 20) {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        if selection.contains(option) {
                            selection.remove(option)
                        } else {
                            selection.insert(option)
                        }
                    }) {
                        Text(option)
                            .font(Font.custom("MontserratAlternates-Regular", size: 18))
                            .foregroundColor(selection.contains(option) ? .white : .black)
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .aspectRatio(1.0, contentMode: .fit) // Ensure square aspect ratio
                            .background(selection.contains(option) ? Color.black : Color.clear)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                    }
                }
            }
            .padding()
            
            Spacer()

            Button(action: {
                // Handle the next action
            }) {
                Text("Next")
                    .font(Font.custom("MontserratAlternates-SemiBold", size: 18))
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(10)
            }
            .padding()
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("User Preference")
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}

struct UserPreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        UserPreferenceView()
    }
}

