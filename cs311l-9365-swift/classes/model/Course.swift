//
//  Course.swift
//  cs311l-9365-swift
//
//  Created by Johan on 9/4/24.
//

import Foundation

class Course: Identifiable {
    var _classCode: String;
    var _courseNumber: String;
    var _descriptiveTitle: String;
    var _units: Double;
    var _days : String
    var _time : TimeRange
    
    // The main initializer for the course object
    init(classCode: String, courseNumber: String, title: String, units: Double, days : String, time: TimeRange) {
        self._classCode = classCode
        self._courseNumber = courseNumber
        self._descriptiveTitle = title
        self._units = units
        self._days = days
        self._time = time
    }
    
    
    // Basically the counterpart to Java's toString() method
    var description: String {
        return "\(_classCode) \(_courseNumber) \(_units) \(_descriptiveTitle)"
    }
}
