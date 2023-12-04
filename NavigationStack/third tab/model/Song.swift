//
//  Song.swift
//  NavigationStack
//
//  Created by Panachai Sulsaksakul on 12/4/23.
//

import Foundation

struct Song: Identifiable, Hashable {
    var title: String
    var artist: String
    var year: Int
    let id: UUID
    
    init(title: String, artist: String, year: Int) {
        self.title = title
        self.artist = artist
        self.year = year
        self.id = UUID()
    }
    
    static func examples() -> [Song] {
        [
        Song(title: "Fight the Power", artist: "Public Enimy", year: 1989),
        Song(title: "Like a Rolling Stone", artist: "Bob Dylan", year: 1965),
        Song(title: "Smell Like Teen Spirit", artist: "Nirvana", year: 1991)
        ]
    }
}
