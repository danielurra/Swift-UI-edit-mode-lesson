# Swift-UI-edit-mode-lesson
Used tools:<br>
* if else
* form
* toobar
* navigation title
* slider
* TextField
* DatePicker
  
## Grab the code - Edit file
```swift
//
//  EditJournalEntryView.swift
//  JournalEntries
//
//  Created by Eusebio Taba on 3/28/24.
//

import SwiftUI

struct EditJournalEntryView: View {
    
    @State var editingJournalEntry: jedi
    @State var editMode: Bool = false
    
    
    var body: some View {
        if editMode {
            Form {
                TextField("Title", text: $editingJournalEntry.title)
                DatePicker("Date", selection: $editingJournalEntry.timestamp, displayedComponents: .date)
                Text(String(repeating: "⭐️", count: Int(editingJournalEntry.rating)))
                Slider(value: $editingJournalEntry.rating, in: 1...5, step: 1)
                TextEditor(text: $editingJournalEntry.depunoyletra)
            }
            .navigationTitle("Edit Mode")
                .toolbar {
                    Button("Done Editing"){
                        editMode = false
                    }
                }
        } else {
            JournalEntryDDetailView(detailJournalEntry: editingJournalEntry)
                .toolbar {
                    Button("Edit"){
                        editMode = true
                    }
                }
        }
    }
}

#Preview {
    NavigationStack {
        EditJournalEntryView(editingJournalEntry: jedi(title: "A great gold day", depunoyletra: "I found a nice pot of gold, I'm rich I tell ya!! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum elit eget ante pellentesque viverra. Aenean porttitor.", rating: 3, timestamp: Date()))
    }
}
```
