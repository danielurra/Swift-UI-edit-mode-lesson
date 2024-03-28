//
//  JournalEntryDannyDetailView.swift
//  JournalEntries
//
//  Created by Eusebio Taba on 3/22/24.
//

import SwiftUI

struct JournalEntryDDetailView: View {
    
    let detailJournalEntry: jedi
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                HStack {
                    Text(detailJournalEntry.timestamp, style: .date)
                        .bold()
                    Text(" - ")
                    Text(String(repeating: "⭐️", count: Int(detailJournalEntry.rating)))
                    Spacer()
                }
                .padding(.bottom)
                Text(detailJournalEntry.depunoyletra)
                    .bold()
            }
            .padding()
        }
        .navigationTitle(detailJournalEntry.title)
    }
}

#Preview {
    NavigationStack {
        JournalEntryDDetailView(detailJournalEntry: jedi(title: "A great gold day", depunoyletra: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum elit eget ante pellentesque viverra. Aenean porttitor, augue at faucibus sagittis, nulla nisi venenatis ex, nec semper enim odio vel erat. Donec ut lacus volutpat.", rating: 3, timestamp: Date()))
    }
}
