//
//  JournalEntriesApp.swift
//  JournalEntries
//
//  Created by Eusebio Taba on 3/20/24.
//

import SwiftUI
import SwiftData


@main
struct JournalEntriesApp: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            jedi.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    var body: some Scene {
        WindowGroup {
            JournalEntriesListView()
        }
        .modelContainer(sharedModelContainer)
    }
}
