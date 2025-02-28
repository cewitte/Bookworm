//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Carlos Eduardo Witte on 26/02/25.
//

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Student.self)
    }
}
