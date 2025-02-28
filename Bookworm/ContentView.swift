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
    @Query var students: [Student]
    
    var body: some View {
        NavigationStack {
            List(students) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add") {
                    let firstNames = ["Luke", "Leia", "Hans", "Anakin", "Darth", "Senator"]
                    let lastNames = ["Skywalker", "Organa", "Solo", "Wader", "Sidious", "Palpatine"]
                    
                    let chosenFirstName = firstNames.randomElement()!
                    let chosenLastName = lastNames.randomElement()!
                    
                    let student = Student(id: UUID(), name: "\(chosenFirstName) \(chosenLastName)")
                    
                    modelContext.insert(student)
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
