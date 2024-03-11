//
//  RemindersView.swift
//  YouJournal
//
//  Created by Luke Trotman on 3/3/2024.
//
import SwiftUI

struct RemindersView: View {
    @State private var notificationsEnabled = false
    @State private var morningReminderEnabled = false
    @State private var eveningReminderEnabled = false
    @State private var morningReminderTime = Date()
    @State private var eveningReminderTime = Date()

    var body: some View {
        Form {
            Section(header: Text("General")) {
                Toggle(isOn: $notificationsEnabled) {
                    Text("Enable Notifications")
                }
            }

            Section(header: Text("Specific Reminders")) {
                Toggle(isOn: $morningReminderEnabled) {
                    Text("Morning Reminder")
                }
                .disabled(!notificationsEnabled) // Disable if notifications are off
                
                if morningReminderEnabled {
                    DatePicker("Time", selection: $morningReminderTime, displayedComponents: .hourAndMinute)
                        .disabled(!notificationsEnabled)
                }
                
                Toggle(isOn: $eveningReminderEnabled) {
                    Text("Evening Reminder")
                }
                .disabled(!notificationsEnabled) // Disable if notifications are off
                
                if eveningReminderEnabled {
                    DatePicker("Time", selection: $eveningReminderTime, displayedComponents: .hourAndMinute)
                        .disabled(!notificationsEnabled)
                }
            }
        }
        .navigationTitle("Reminders")
        .onAppear {
            loadReminderSettings()
        }
        .onChange(of: morningReminderEnabled) { newValue in
            // Implement the logic to schedule/cancel the morning reminder
        }
        .onChange(of: eveningReminderEnabled) { newValue in
            // Implement the logic to schedule/cancel the evening reminder
        }
    }

    private func loadReminderSettings() {
        // Load your reminder settings, potentially from UserDefaults
        // Example:
        // notificationsEnabled = UserDefaults.standard.bool(forKey: "notificationsEnabled")
        // morningReminderEnabled = UserDefaults.standard.bool(forKey: "morningReminderEnabled")
        // eveningReminderEnabled = UserDefaults.standard.bool(forKey: "eveningReminderEnabled")
        // Here you would also load the times if they're saved
    }

    // Here you would implement any additional functions you need for handling reminders
}

struct RemindersView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RemindersView()
        }
    }
}


