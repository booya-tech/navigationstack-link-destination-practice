//
//  FirstTabView.swift
//  NavigationStack
//
//  Created by Panachai Sulsaksakul on 12/1/23.
//

import SwiftUI

struct FirstTabView: View {
    
    @State var showSettings: Bool = false
    @State var path = NavigationPath()
    
    var body: some View {
        
        VStack {
            
            NavigationStack(path: $path) {
                List {
                    NavigationLink("Go to A", value: "Show AAAA")
                    
                    NavigationLink("Go to B", value: "Show BBB")
                    
                    NavigationLink("Go to number 1", value: 1)
                    
                    Button(action: {
                        path.append("GGG")
                    }, label: {
                        Text("Show Favorite")
                    })
                    
                    Button(action: {
                        showSettings.toggle()
                    }, label: {
                        Text("Settings")
                    })
                    
                    Section("Old") {
                        NavigationLink("Old link with destination") {
                            VStack {
                                Text("old navigation link")
                                NavigationLink("Go to number 2", value: 2)
                            }
                        }
                    }
                    
                }
                .navigationDestination(for: String.self) { textValue in
                    DetailView(text: textValue, path: $path)
                }
                
                .navigationDestination(for: Int.self) { numberValue in
                    Text("Detail with \(numberValue)")
                }
                
                .navigationDestination(isPresented: $showSettings) {
                    Text("Settings")
                }
                .navigationTitle("Root View")
            }
            
            VStack {
                Text("Path")
                Text("number of detail views on the stack: \(path.count)")
                
                Button(action: {
                    path.removeLast()
                }, label: {
                    Text("go back one view")
                })
                
                Button(action: {
                    path = NavigationPath()
                }, label: {
                    Text("go to root view")
                })
            }
  
        }
    }
}

#Preview {
    FirstTabView()
}
