//
//  ContentView.swift
//  JournalEntries
//
//  Created by Eusebio Taba on 3/20/24.
//

import SwiftUI
import SwiftData

struct JournalEntriesListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var arrayPlural: [jedi]
    
    @State var showCreateView = false
    
    var body: some View {
        NavigationStack {
            List (arrayPlural){ iterateArrayMembers in
                NavigationLink(destination: EditJournalEntryView(editingJournalEntry: iterateArrayMembers)){
                    RowDetailView(rowJournalEntry: iterateArrayMembers)
                }
            }
            .navigationTitle("\(arrayPlural.count) Journal Entries")
            .toolbar {
                Button(action: {
                    showCreateView = true
                }) {
                    Label("Add Item", systemImage: "plus")
                }
            }
            .sheet(isPresented: $showCreateView){
                CreateJournalEntryView()
            }
        }
    }
}

#Preview {
    JournalEntriesListView()
        .modelContainer(for: jedi.self, inMemory: true)
}
	
