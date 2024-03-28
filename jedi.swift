//
//  jedi.swift
//  JournalEntries
//
//  Created by Eusebio Taba on 3/20/24.


import Foundation
import SwiftData

@Model
final class jedi { // jedi = journal entry dani individual (the blueprint) (the class)
    var title: String = ""
    var depunoyletra: String = ""
    var rating: Double = 1
    var timestamp: Date = Date()

    
    init(title: String, depunoyletra: String, rating: Double, timestamp: Date) {
        self.title = title
        self.depunoyletra = depunoyletra
        self.rating = rating
        self.timestamp = timestamp
    }
}

//let plural: [jedi] = [
//    jedi(title: "A great gold day", depunoyletra: "I found a nice pot of gold, I'm rich I tell ya!! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum elit eget ante pellentesque viverra. Aenean porttitor.", rating: 3, timestamp: Date()),
//    jedi(title: "Headache", depunoyletra: "I woke up with a headache and it never got well :/ ulla nisi venenatis ex, nec semper enim odio vel erat. Donec ut lacus volutpat, mattis lectus non, porttitor orci. Suspendisse arcu risus, lacinia feugiat odio eu, pulvinar consequat lacus. Ut tincidunt iaculis mi, sit amet euismod est fermentum sed. Nunc ullamcorper eget lectus eu pulvinar. Morbi efficitur mattis ipsum vel malesuada. Morbi nec justo nulla. Fusce auctor, nunc quis pellentesque scelerisque, arcu ligula finibus felis, eget consectetur nunc nibh sit amet eros. Aenean gravida faucibus nisl id egestas. Fusce lacinia et. ", rating: 1, timestamp: Date.now.addingTimeInterval(-24 * 2 * 3600)),
//    jedi(title: "My App is live!", depunoyletra: "I uploaded my first app to Apple store Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fermentum elit eget ante pellentesque viverra. Aenean porttitor, augue at faucibus sagittis, nulla nisi venenatis ex, nec semper enim odio vel erat. Donec ut lacus volutpat, mattis lectus non, porttitor orci. Suspendisse arcu risus, lacinia feugiat odio eu, pulvinar consequat lacus. Ut tincidunt iaculis mi, sit amet euismod est fermentum sed.", rating: 5, timestamp: Date()),
//]
