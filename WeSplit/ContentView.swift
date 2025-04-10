//
//  ContentView.swift
//  WeSplit
//
//  Created by Chaitanya J on 10/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section{
                    Text("Hello, world!")
                }
                
                Section{
                    Text("Hello, world!")
                }
                
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world!")
                
                Section{
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    ContentView()
}
