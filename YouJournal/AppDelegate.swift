//
//  YouJournal App.swift
//  YouJournal
//
//  Created by Luke Trotman on 29/2/2024.
//

import SwiftUI

@main
struct YouJournalApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                JournalHome()
            }
        }
    }
}
