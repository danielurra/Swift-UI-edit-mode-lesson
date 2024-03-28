//
//  RowDetailView.swift
//  JournalEntries
//
//  Created by Eusebio Taba on 3/23/24.
//

import SwiftUI

struct RowDetailView: View {
    
    let rowJournalEntry: jedi
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(rowJournalEntry.title)
                    .bold()
                Text("-")
                Text(rowJournalEntry.depunoyletra)
                    .lineLimit(1)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 1)
            HStack {
                Text(rowJournalEntry.timestamp, style: .date)
                    .foregroundStyle(.secondary)
                Text(" - ")
                Text(String(String(repeating: "⭐️", count: Int(rowJournalEntry.rating))))
            }
            .font(.caption)
        }
    }
}

#Preview {
    List {
        RowDetailView(rowJournalEntry: jedi(title: "A great gold day", depunoyletra: "I found a nice pot of gold, I'm rich I tell ya!! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum elit eget ante pellentesque viverra. Aenean porttitor.", rating: 3, timestamp: Date()))
    }
}
