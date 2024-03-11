//
//  SecurityView.swift
//  YouJournal
//
//  Created by Luke Trotman on 3/3/2024.
//

import SwiftUI
import LocalAuthentication

struct SecurityView: View {
    @State private var isFaceIDEnabled = false
    @State private var passcode: String = ""

    var body: some View {
        NavigationView {
            Form {
                Toggle("Enable Face ID", isOn: $isFaceIDEnabled)
                    .onChange(of: isFaceIDEnabled) { value in
                        authenticateWithFaceID()
                    }
                
                Section(header: Text("Passcode Settings")) {
                    SecureField("Enter a new passcode", text: $passcode)
                    Button("Update Passcode") {
                        // Logic to change passcode
                    }
                }
            }
            .navigationBarTitle("Security")
        }
    }

    private func authenticateWithFaceID() {
        let context = LAContext()
        var error: NSError?

        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Identify yourself!"

            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                DispatchQueue.main.async {
                    if success {
                        isFaceIDEnabled = true
                    } else {
                        // There was a problem
                        isFaceIDEnabled = false
                    }
                }
            }
        } else {
            // no biometrics
            isFaceIDEnabled = false
        }
    }
}

struct SecurityView_Previews: PreviewProvider {
    static var previews: some View {
        SecurityView()
    }
}
