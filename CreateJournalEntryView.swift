//
//  CreateJournalEntryView.swift
//  JournalEntries
//
//  Created by Eusebio Taba on 3/27/24.
//

import SwiftUI

struct CreateJournalEntryView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var title: String = ""
    @State var depunoyletra: String = "Borrar y escribir"
    @State var rating: Double = 3.0
    @State var timestamp: Date = Date()
    
    
    var body: some View {
        NavigationStack {
            
            Form {
                TextField("Title", text: $title)
                DatePicker("Date", selection: $timestamp, displayedComponents: .date)
                Text(String(repeating: "⭐️", count: Int(rating)))
                Slider(value: $rating, in: 1...5, step: 1)
                TextEditor(text: $depunoyletra)
            }
            .navigationTitle("New Journal Entry")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        let newJournalEntry = jedi(title: title, depunoyletra: depunoyletra, rating: rating, timestamp: timestamp)
                        modelContext.insert(newJournalEntry)
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    CreateJournalEntryView()
}
