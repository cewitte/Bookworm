//
//  Book.swift
//  Bookworm
//
//  Created by Carlos Eduardo Witte on 28/02/25.
//

import Foundation
import SwiftData

@Model
class Book {
    var title: String
    var author: String
    var genre: String
    var review: String
    var rating: Int
    
    // Challenge 3: Add a new “date” attribute to the `Book` class, assigning `Date`.now to it so it gets the current date and time, then format that nicely somewhere in `DetailView`.
    var date: Date
    
    init(title: String, author: String, genre: String, review: String, rating: Int, date: Date) {
        self.title = title
        self.author = author
        self.genre = genre
        self.review = review
        self.rating = rating
        self.date = date
    }
}
