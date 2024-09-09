//
//  LetterGradeController.swift
//  cs311l-9365-swift
//
//  Created by Marvin Patrick Lacanilao on 9/9/24.
//

import Foundation

class LetterGradeController: ObservableObject {
    // Store grades
    @Published var grades: [Grade] = []
    
    init() {
        let course1 = Course(
            classCode: "9365A",
            courseNumber: "CS 311",
            title: "Applications Development (LEC)",
            units: 2.0,
            days: "WS",
            time: TimeRange(startTime: "01:30", endTime: "02:30")
        )
        
        let course2 = Course(
            classCode: "9365B",
            courseNumber: "CS 311L",
            title: "Applications Development (LAB)",
            units: 1.0,
            days: "WS",
            time: TimeRange(startTime: "03:00", endTime: "04:30")
        )
        
        let course3 = Course(
            classCode: "9366A",
            courseNumber: "CS 312",
            title: "Web Systems Development (LEC)",
            units: 2.0,
            days: "TF",
            time: TimeRange(startTime: "12:30", endTime: "01:30")
        )
        
        let course4 = Course(
            classCode: "9366B",
            courseNumber: "CS 312L",
            title: "Web Systems Development (LAB)",
            units: 1.0,
            days: "TF",
            time: TimeRange(startTime: "01:30", endTime: "03:00")
        )
        
        let course5 = Course(
            classCode: "9367",
            courseNumber: "CS 313",
            title: "Software Engineering",
            units: 3.0,
            days: "WTTHS",
            time: TimeRange(startTime: "10:30", endTime: "11:30")
        )
        
        let course6 = Course(
            classCode: "9368",
            courseNumber: "CS 314",
            title: "Social and Personal Development in the ICT Workplace",
            units: 3.0,
            days: "MWF",
            time: TimeRange(startTime: "08:30", endTime: "09:30")
        )
        
        let course7 = Course(
            classCode: "9369",
            courseNumber: "CS 315",
            title: "Technology-Assisted Presentation and Communication",
            units: 3.0,
            days: "TTHS",
            time: TimeRange(startTime: "08:30", endTime: "09:30")
        )
        
        let course8 = Course(
            classCode: "9370",
            courseNumber: "CSM 316",
            title: "Numerical Methods for Computer Science",
            units: 3.0,
            days: "MWF",
            time: TimeRange(startTime: "09:30", endTime: "10:30")
        )
        
        let course9 = Course(
            classCode: "9371",
            courseNumber: "CFE 105A",
            title: "CICM in Action: Justice, Peace Integrity of Creation, Indigenous Peoples & Interreligious Dialogue",
            units: 1.5,
            days: "F",
            time: TimeRange(startTime: "10:30", endTime: "12:00")
        )
        
        // Assign values to grades
        grades = [
            Grade(grade: 88, course: course1),
            Grade(grade: 88, course: course2),
            Grade(grade: 92, course: course3),
            Grade(grade: 92, course: course4),
            Grade(grade: 90, course: course5),
            Grade(grade: 97, course: course6),
            Grade(grade: 95, course: course7),
            Grade(grade: 90, course: course8),
            Grade(grade: 99, course: course9)
        ]
    }
    
    // Conversion of Numeric Grade to Letter Grade
    func letterGrade(for grade: Double) -> String {
        switch grade {
        case 90...100: return "A"
        case 80..<90: return "B"
        case 70..<80: return "C"
        case 60..<70: return "D"
        default: return "F"
        }
    }
}

