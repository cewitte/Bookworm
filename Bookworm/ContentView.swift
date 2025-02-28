//
//  ContentView.swift
//  Bookworm
//
//  Created by Carlos Eduardo Witte on 26/02/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationStack {
            TextEditor(text: $notes)
                .navigationBarTitle("Bookworm")
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
