//
//  ContentView.swift
//  WeSplit
//
//  Created by Chaitanya J on 10/04/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    
    var body: some View {
        Button("Tap Count : \(tapCount)") {
            tapCount += 1
        }
    }
}

#Preview {
    ContentView()
}
