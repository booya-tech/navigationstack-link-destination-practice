//
//  DetailView.swift
//  NavigationStack
//
//  Created by Panachai Sulsaksakul on 12/1/23.
//

import SwiftUI

struct DetailView: View {
    let text: String
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            Text("Detail view showing")
            Text(text)
            
            Divider()
            
            NavigationLink("Link to 3", value: 3)
            NavigationLink("Link to C", value: "CCC")
        }
        .navigationTitle(text)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    path.removeLast()
                }, label: {
                    Image(systemName: "chevron.left.circle")
                })
            }
        }
    }
}

#Preview {
    NavigationStack {
        DetailView(text: "CCC", path: .constant(NavigationPath()))
    }
}
