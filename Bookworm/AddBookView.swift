//
//  AddBookView.swift
//  Bookworm
//
//  Created by Carlos Eduardo Witte on 28/02/25.
//

import SwiftUI

struct AddBookView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3
    @State private var genre = ""
    @State private var review = ""
    
    let genres = ["Fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]
    
    // ["Fantasy", "Horror", "Kids", "Science Fiction", "Thriller", "Romance", "Historical Fiction", "Mystery", "Literary Fiction", "Self Help", "Biographies", "Memoirs", "Cooking", "Travel", "Photography", "Business", "Technology", "Sports", "Art", "Music", "Fashion", "Education", "Health", "Religion", "Poetry", "Other"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name of Book", text: $title)
                    TextField("Author's name", text: $author)
                    
                    Picker("Genre", selection: $genre) {
                        ForEach(genres, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section("Write a review") {
                    TextEditor(text: $review)
                    
                    Picker("Rating", selection: $rating) {
                        ForEach(1..<6) {
                            Text("\($0)")
                        }
                    }
                        
                }
                
                Section {
                    Button("Save") {
                        let newBook = Book(title: title, author: author, genre: genre, review: review, rating: rating)
                        modelContext.insert(newBook)
                        dismiss()
                    }
                    // Challenge 1: Right now it’s possible to select no title, author, or genre for books, which causes a problem for the detail view. Please fix this, either by forcing defaults, validating the form, or showing a default picture for unknown genres – you can choose.
                    .disabled(title.isEmpty || author.isEmpty || genre.isEmpty || review.isEmpty)
                }
            }
            .navigationTitle("Add Book")
        }
    }
}

#Preview {
    AddBookView()
}
