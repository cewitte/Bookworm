# Bookworm

Paul Hudson's ([@twostraws](https://x.com/twostraws)) 100 Days of Swift UI Project 11.

## Project 11

Source URL: [Bookworm: Introduction](https://www.hackingwithswift.com/books/ios-swiftui/bookworm-introduction)

Branch: `custom-component0with-binding`

"In this project we’re going to build an app to track which books you’ve read and what you thought of them, and it’s going to follow a similar theme to project 10: let’s take all the skills you’ve already mastered, then add some bonus new skills that take them all to a new level.

This time you’re going to meet `SwiftData`, which is Apple’s framework for working with databases. This project will serve as an introduction for `SwiftData`, but we’ll be going into much more detail soon.

At the same time, we’re also going to build our first custom user interface component – a star rating widget where the user can tap to leave a score for each book. This will mean introducing you to another property wrapper, called `@Binding` – trust me, it will all make sense."

### Creating a custom component with `@Binding` ([Page Link](https://www.hackingwithswift.com/books/ios-swiftui/creating-a-custom-component-with-binding))

"`@Bindable` is used when you're accessing a shared class that uses the @Observable macro: You create it using `@State` in one view, so you have bindings available there, but you use `@Bindable` when sharing it with other views so SwiftUI can create bindings there too.

On the other hand, `@Binding` is used when you have a simple, value type piece of data rather than a separate class. For example, you have an `@State` property that stores a Boolean, a Double, an array of strings, etc, and you want to pass that around. That doesn't use the `@Observable` macro, so we can't use `@Bindable`. Instead, we use `@Binding`, so we can share that Boolean or integer in several places.

This behavior makes `@Binding` extremely important for whenever you want to create a custom user interface component. At their core, UI components are just SwiftUI views like everything else, but `@Binding` is what sets them apart: while they might have their local `@State` properties, they also expose `@Binding` properties that let them interface directly with other views."

### Acknowledgments

Original code created by: [Paul Hudson - @twostraws](https://x.com/twostraws) (Thank you!)

Made with :heart: by [@cewitte](https://x.com/cewitte)