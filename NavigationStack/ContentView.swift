//
//  ContentView.swift
//  NavigationStack
//
//  Created by Panachai Sulsaksakul on 12/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FirstTabView()
                .tabItem {
                    Label("First", systemImage: "plus")
                }
            SecondTabView()
                .tabItem {
                    Label("Second", systemImage: "plus")
                }
            
            ThirdTabView()
                .tabItem {
                    Label("Third", systemImage: "plus")
                }
        }
    }
}

#Preview {
    ContentView()
}
