//
//  TodoView.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/1/24.
//

import SwiftUI

// Main view of Todo
struct TodoView: View {
    @State private var isPresentingNewItemView = false
    @StateObject var todoController: TodoController = TodoController()
    
    var body: some View {
        VStack {
            Button(action: {
                isPresentingNewItemView = true
            }) {
                Label("Add Item", systemImage: "plus.circle.fill")
                    .padding(5)
            }
            .padding()
            HStack {
                ListView()
            }
            .environmentObject(todoController)
        }
        .sheet(isPresented: $isPresentingNewItemView) {
            NewItemView( isPresentingNewItemView: $isPresentingNewItemView)
                .environmentObject(todoController)
        }
    }
}

// View for the list of todo items
struct ListView: View {
    @EnvironmentObject var todoController: TodoController
    
    var body: some View {
        List {
            ForEach(todoController.items) {
                item in ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            todoController.updateItem(item: item)
                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            }
            .onDelete(perform: todoController.deleteItem)
            .onMove(perform: todoController.moveItem)
        }
    }
}

#Preview {
    TodoView()
}

// View of individual list item
struct ListRowView: View {
    let item: TodoItem
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .gray)
            Text(item.course + ": " + item.name)
            Spacer()
        }
        .padding(EdgeInsets())
    }
}

// View for prompting a new item input
struct NewItemView: View {
    @EnvironmentObject var todoController: TodoController
    @Binding var isPresentingNewItemView: Bool
    @State private var courseNum: String = ""
    @State private var taskName: String = ""
    
    var body: some View {
        VStack {
            Form {
                TextField("Course Number", text: $courseNum)
                    .padding(.bottom, 10)
                TextField("Task Name", text: $taskName)
                    .padding(.bottom, 10)
            }
        }
        HStack {
            Button("Cancel") {
                isPresentingNewItemView = false
                NSApp.keyWindow?.endSheet(NSApp.keyWindow!)
            }
            Spacer()
            Button("Save") {
                saveButtonPressed()
                NSApp.keyWindow?.endSheet(NSApp.keyWindow!)
                isPresentingNewItemView = false
            }
        }
        .padding()
        .onDisappear {
            courseNum = ""
            taskName = ""
        }
    }
        
    
    func saveButtonPressed() {
        if validateInput() {
            todoController.addItem(course: courseNum, name: taskName)
        }
    }
    
    func validateInput() -> Bool {
        if courseNum.count < 5 && taskName.count < 1 {
            return false
        }
        return true
    }
}

