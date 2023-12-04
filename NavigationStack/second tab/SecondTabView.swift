//
//  SecondTabView.swift
//  NavigationStack
//
//  Created by Panachai Sulsaksakul on 12/4/23.
//

import SwiftUI

struct SecondTabView: View {
    
    let books: [Book] = Book.examples()
    @State private var selectedBookPath = [Book]()
    
    var body: some View {
         
        VStack {
            NavigationStack(path: $selectedBookPath) {
                List {
                    ForEach(books) { book in
                        NavigationLink(book.title, value: book)
                    }
                }
                .navigationDestination(for: Book.self) { book in
                    BookDestinationView(book: book)
                }
            }
            
            VStack {
                ForEach(selectedBookPath) { book in
                    Text(book.title)
                }
                
                Button(action: {
                    guard let book = books.first else { return }
                    
                    // Back to first page
                    selectedBookPath = [book]
                }, label: {
                    Text("go to favorite")
                })
            }
        }
    }
}

#Preview {
    SecondTabView()
}
