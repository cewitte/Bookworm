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

### Accepting multi-line text input with TextEditor([Page Link](https://www.hackingwithswift.com/books/ios-swiftui/accepting-multi-line-text-input-with-texteditor))

Branch: `texteditor-multiline-input`

"We’ve used SwiftUI’s `TextField` view several times already, and it’s great for times when the user wants to enter short pieces of text. However, for longer pieces of text you might want to switch over to using a `TextEditor` view instead: it also expects to be given a two-way binding to a text string, but it has the additional benefit of allowing multiple lines of text – it’s better for giving users a large amount of space to work with.

Mostly because it has nothing special in the way of configuration options, using `TextEditor` is actually easier than using `TextField` – you can’t adjust its style or add placeholder text, you just bind it to a string. However, you do need to be careful to make sure it doesn’t go outside the safe area, otherwise typing will be tricky; embed it in a `NavigationStack`, a `Form`, or similar."

### Introduction to `SwiftData` and SwiftUI ([Page Link](https://www.hackingwithswift.com/books/ios-swiftui/introduction-to-swiftdata-and-swiftui))

Branch: `swiftdata-intro`

"First, the basics: `SwiftData` is an object graph and persistence framework, which is a fancy way of saying it lets us define objects and properties of those objects, then lets us read and write them from permanent storage.

On the surface this sounds like using `Codable` and `UserDefaults`, but it’s much more advanced than that: SwiftData is capable of sorting and filtering of our data, and can work with much larger data – there’s effectively no limit to how much data it can store. Even better, SwiftData implements all sorts of more advanced functionality for when you really need to lean on it: iCloud syncing, lazy loading of data, undo and redo, and much more."

There are 3 steps to adding `SwiftData` to our apps:

1. We create a model class and assign the `@Model` macro to the top of it, like here in [`Student.swift`](./Bookworm/Student.swift).
2. Add (for example) the `.modelContainer(for: Student.self)` to the `WindowGroup { ... }` as in the [`BookwormApp.swift`](./Bookworm/BookwormApp.swift)
3. Add the `@Query var students: [Student]` to your View (or `ContentView`) and the `Environment(\.modelContext) var modelContext`, which lets you acccess the "live" version of the data (the `modelContext`).

### Acknowledgments

Original code created by: [Paul Hudson - @twostraws](https://x.com/twostraws) (Thank you!)

Made with :heart: by [@cewitte](https://x.com/cewitte)