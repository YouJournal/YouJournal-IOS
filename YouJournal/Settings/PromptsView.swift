//
//  PromptsView.swift
//  YouJournal
//
//  Created by Luke Trotman on 3/3/2024.
//

import SwiftUI

struct PromptsView: View {
    @State private var userInput: String = ""
    @State private var selections: [String] = []
    let options = ["Understand Yourself", "Ignite Your Motivation", "Healing & Resilience", "Just Explore"]

    var body: some View {
        VStack {
            Text("Customise Journal Prompts")
                .font(.headline)
                .padding()

            TextField("Ex. Check in about the kids", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Text("Select all that apply")
                .font(.subheadline)
                .padding()

            // Display options as buttons
            ForEach(options, id: \.self) { option in
                Button(action: {
                    // Toggle selection
                    if self.selections.contains(option) {
                        self.selections.removeAll { $0 == option }
                    } else {
                        self.selections.append(option)
                    }
                }) {
                    HStack {
                        Text(option)
                            .foregroundColor(self.selections.contains(option) ? .white : .black)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(self.selections.contains(option) ? Color.black : Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 3)
                    }
                }
                .buttonStyle(PlainButtonStyle())
                .padding(4)
            }

            Button(action: {
                // Action for Next button
                print("User input: \(userInput)")
                print("Selected options: \(selections.joined(separator: ", "))")
            }) {
                Text("Save")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(10)
                    .padding()
            }

            Spacer()
        }
        .padding()
        .navigationBarTitle("User Preferences", displayMode: .inline)
    }
}

struct PromptsView_Previews: PreviewProvider {
    static var previews: some View {
        PromptsView()
    }
}
