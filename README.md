# Bookworm

Paul Hudson's ([@twostraws](https://x.com/twostraws)) 100 Days of Swift UI Project 11.

## Project 11

Source URL: [Bookworm: Introduction](https://www.hackingwithswift.com/books/ios-swiftui/bookworm-introduction)

"In this project we’re going to build an app to track which books you’ve read and what you thought of them, and it’s going to follow a similar theme to project 10: let’s take all the skills you’ve already mastered, then add some bonus new skills that take them all to a new level.

This time you’re going to meet `SwiftData`, which is Apple’s framework for working with databases. This project will serve as an introduction for `SwiftData`, but we’ll be going into much more detail soon.

At the same time, we’re also going to build our first custom user interface component – a star rating widget where the user can tap to leave a score for each book. This will mean introducing you to another property wrapper, called `@Binding` – trust me, it will all make sense."

![Bookworm](/images/Bookworm_animation.gif)

<<<<<<< HEAD
### Challenge 1

Branch: `challenge-1`

Right now it’s possible to select no title, author, or genre for books, which causes a problem for the detail view. Please fix this, either by forcing defaults, validating the form, or showing a default picture for unknown genres – you can choose.

![Challenge 1](/images/challenge_1.gif)

### Challenge 2

Branch: `challenge-2`

Modify `ContentView` so that books rated as 1 star are highlighted somehow, such as having their name shown in red.

![Challenge 2](/images/challenge_2.gif)

### Challenge 3

Branch: `challenge-3`

Add a new “date” attribute to the `Book` class, assigning `Date`.now to it so it gets the current date and time, then format that nicely somewhere in `DetailView`.

## Accessibility support

Added Paul's code to add accessibility support:

```swift
.accessibilityElement()
.accessibilityLabel(label)
.accessibilityValue(rating == 1 ? "1 star" : "\(rating) stars")
.accessibilityAdjustableAction { direction in
    switch direction {
    case .increment:
        if rating < maximumRating { rating += 1 }
    case .decrement:
        if rating > 1 { rating -= 1 }
    default:
        break
    }
}
```

>That groups all its children together, applies the label “Rating”, but then adds a value based on the current stars. It also allows that rating value to be adjusted up or down using swipes, which is much better than trying to work through lots of individual images.

### Acknowledgments

Original code created by: [Paul Hudson - @twostraws](https://x.com/twostraws) (Thank you!)

Made with :heart: by [@cewitte](https://x.com/cewitte)
