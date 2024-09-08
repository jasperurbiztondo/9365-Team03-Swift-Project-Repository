//
//  TodoItem.swift
//  cs311l-9365-swift
//
//  Created by Johan on 9/4/24.
//

import Foundation

struct TodoItem {
    var course: Course
    var name: String
    var description: String
    var status: String
    
    /**
     Constructs an object of TodoItem with user-defined values.
     */
    init(course: Course, name: String, description: String, status: String = "To Do") {
        self.course = course
        self.name = name
        self.description = description
        self.status = status
        
    }
    
    mutating func markAsDone() {
        status = "Done"
    }
    
    mutating func markAsDoing() {
        status = "Doing"
    }
    
    func toString() -> String {
        return "Course: \(course.courseNumber)" + ", Task Name: \(name)" + ", Task Description: \(description)" + ", Status: \(status)"
    }
}
