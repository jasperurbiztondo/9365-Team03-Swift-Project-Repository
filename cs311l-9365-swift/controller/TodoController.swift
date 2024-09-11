//
//  TodoController.swift
//  cs311l-9365-swift
//
//  Created by Johan on 9/11/24.
//

import Foundation

class TodoController: ObservableObject {
    @Published var items: [TodoItem] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            TodoItem(course: "CS 311", name: "Project", isCompleted: false),
            TodoItem(course: "CS 312", name: "Project", isCompleted: true)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(course: String, name: String) {
        let newItem = TodoItem(course: course, name: name, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: TodoItem) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
                items[index].isCompleted.toggle()
            }
    }
}
