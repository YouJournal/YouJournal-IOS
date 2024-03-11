//
//  TermsAndConditionsView.swift
//  YouJournal
//
//  Created by Luke Trotman on 3/3/2024.
//

import SwiftUI

struct RTFDocumentView: UIViewRepresentable {
    var rtfText: NSAttributedString

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.isEditable = false
        textView.isSelectable = true
        textView.attributedText = rtfText
        textView.backgroundColor = .systemBackground // For dark mode support
        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = rtfText
    }
}

struct TermsAndConditionsView: View {
    @State private var termsText: NSAttributedString = NSAttributedString(string: "Loading...")

    var body: some View {
        ScrollView {
            RTFDocumentView(rtfText: termsText)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure UITextView is visible
        }
        .navigationBarTitle("Terms and Conditions", displayMode: .inline)
        .onAppear {
            loadTermsFromRTFFile()
        }
    }
    
    func loadTermsFromRTFFile() {
        print("Loading RTF file...")
        guard let rtfPath = Bundle.main.url(forResource: "TandCYJ", withExtension: "rtf") else {
            print("RTF file not found in bundle.")
            termsText = NSAttributedString(string: "Terms and conditions file not found.")
            return
        }

        do {
            let rtfData = try Data(contentsOf: rtfPath)
            termsText = try NSAttributedString(data: rtfData, options: [.documentType: NSAttributedString.DocumentType.rtf], documentAttributes: nil)
            print("RTF file loaded successfully.")
        } catch {
            print("Error loading RTF data: \(error)")
            termsText = NSAttributedString(string: "Could not load the terms and conditions.")
        }
    }
}

struct TermsAndConditionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TermsAndConditionsView()
        }
    }
}


