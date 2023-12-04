//
//  BookDestinationView.swift
//  NavigationStack
//
//  Created by Panachai Sulsaksakul on 12/4/23.
//

import SwiftUI

struct BookDetailView: View {
    
    let book: Book
    
    var body: some View {
        VStack {
            Text("Book detail view")
            
            Divider()
            
            NavigationLink("suggestion 1", value: Book(title: "suggestion 1"))
            NavigationLink("suggestion 2", value: Book(title: "suggestion 2"))
            NavigationLink("suggestion 3", value: Book(title: "suggestion 3"))
        }
        .navigationTitle(book.title)
    }
}

#Preview {
    BookDestinationView(book: Book(title: "Alice in Wonderland"))
}
