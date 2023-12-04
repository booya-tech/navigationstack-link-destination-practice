//
//  NavigationStateManger.swift
//  NavigationStack
//
//  Created by Panachai Sulsaksakul on 12/4/23.
//

import Foundation

enum SelectionState: Hashable {
    case movie(Movie)
    case song(Song)
    case book(Book)
    case settings
}

class NavigationStateManager: ObservableObject {
    
    @Published var selectionPath = [SelectionState]()
    
    func popToRoot() {
        selectionPath = []
    }
    
    func goToSettings() {
        selectionPath = [SelectionState.settings]
    }
    
}
