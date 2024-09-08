//
//  Course.swift
//  cs311l-9365-swift
//
//  Created by Johan on 9/4/24.
//

import Foundation

class Course {
    var _courseNumber: String;
    var _descriptiveTitle: String;
    var _units: Double;
    var _schedule : [DayTime]
    
    // The main initializer for the course object
    init(courseNumber: String, title: String, units: Double) {
        self._courseNumber = courseNumber
        self._descriptiveTitle = title
        self._units = units
    }
    
    
    // Basically the counterpart to Java's toString() method
    var description: String {
        return "\(_courseNumber) \(_units) \(_descriptiveTitle)"
    }
}
