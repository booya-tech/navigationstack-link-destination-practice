//
//  ModelDataManager.swift
//  NavigationStack
//
//  Created by Panachai Sulsaksakul on 12/4/23.
//

import Foundation

class ModelDataManager: ObservableObject {
    
    @Published var books = Book.examples()
    @Published var songs = Song.examples()
    @Published var movies = Movie.examples()
    
}
