//
//  Grade.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/8/24.
//

import Foundation

struct Grade {
    
    var grade: Double;      // Holds the grade the student has for the subject
    var course: Course;     // Holds the Course object of the associated grade
    
    // The main initializer for the class
    init(grade: Double, course: Course) {
        self.course = course
        
        // Validates whether the grade is indeed a valid grade
        if (grade >= 65 && grade < 100) {
            self.grade = grade
        } else {
            self.grade = -1
        }
    }
    
    // A modified getter and setter for the grade's value so that when a grade value that is not within the range of 65 - 99 is set (inclusive it will automatically set grade to -1
    var gradeValue: Double {
        get {
            return grade
        }
        
        set (grade) {
            if (grade >= 65 && grade < 100) {
                self.grade = grade
            } else {
                self.grade = -1
            }
        }
    }
    
    // The \(variable_name) is how you should get a variable's value inside a String in swift
    var description:String {
        return "\(course._courseNumber) : \(grade)"
    }
}
