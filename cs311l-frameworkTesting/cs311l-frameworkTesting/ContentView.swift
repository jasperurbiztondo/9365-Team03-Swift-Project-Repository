//
//  ContentView.swift
//  cs311l-frameworkTesting
//
//  Created by June Ryleigh on 10/23/24.
//

import SwiftUI
import cs311lFramework

struct ContentView: View {
    @State private var person = Person(name:"Aidan", age:31)
    var body: some View {
        VStack {
        Text(person.name)
        Text("Age\(person.age)")
        Text("Created on \(person.dateCreated.formatted(date: .long, time: .shortened))")
        Button("Increment Age") {
            person.age += 1
        }
        .buttonStyle(.borderedProminent)
    }
    .padding()
    }
}


#Preview {
    ContentView()
}

