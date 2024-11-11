//
//  TodoController.swift
//  cs311l-9365-swift
//
//  Created by Johan on 9/11/24.
//

import Foundation

public class TodoController: ObservableObject {
    @Published var items: [TodoItem] = []
    
    public init() {
        getItems()
    }
    
    public func getItems() {
        let newItems = [
            TodoItem(course: "CS 311", name: "Project", isCompleted: false),
            TodoItem(course: "CS 312", name: "Project", isCompleted: true)
        ]
        items.append(contentsOf: newItems)
    }
    
    public func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    public func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    public func addItem(course: String, name: String) {
        let newItem = TodoItem(course: course, name: name, isCompleted: false)
        items.append(newItem)
    }
    
    publicfunc updateItem(item: TodoItem) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
                items[index].isCompleted.toggle()
            }
    }
}
