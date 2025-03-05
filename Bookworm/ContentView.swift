//
//  ContentView.swift
//  Bookworm
//
//  Created by Carlos Eduardo Witte on 26/02/25.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query(sort: [
        SortDescriptor(\Book.title, order: .forward),
        SortDescriptor(\Book.rating, order: .reverse)
    ]) var books : [Book]
    
    @State private var showingAddScreen = false
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(books) { book in
                    NavigationLink(value: book) {
                        HStack {
                            EmojiRatingView(rating: book.rating)
                                .font(.largeTitle)
                            
                            VStack(alignment: .leading) {
                                Text(book.title)
                                    .font(.headline)
                                Text(book.author)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }
                }
                .onDelete(perform: deleteBooks)
                
            }
            .navigationTitle(Text("Bookworm"))
            .navigationDestination(for: Book.self) { book in
                DetailView(book: book)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Book", systemImage: "plus") {
                        showingAddScreen.toggle()
                    }
                }
            }
            .sheet(isPresented: $showingAddScreen) {
                AddBookView()
            }
        }
        
        
    }
    
    func deleteBooks(at offsets: IndexSet) {
        for offset in offsets {
            // find book in our query
            let book = books[offset]
            
            // delete it from the context
            modelContext.delete(book)
        }
    }
}

#Preview {
    
    ContentView()
}
