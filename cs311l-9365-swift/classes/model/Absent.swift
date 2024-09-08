//
//  Absent.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/7/24.
//


import Foundation

class Absent {
    var _isAbsent: Bool; // If he was absent true, if he was late false
    var _courseStruct: Course; // Holds which course the student was absent in
    var _date: Date; // Holds the current date and the current time
    var _remarks: Bool; // excused absent or otherwise
    
    
    // Initializer for an object of this class
    init(isAbsent: String, courseStruct: Course, date: Date, remarks: Bool) {
        self._isAbsent = isAbsent == "Absent"
        self._courseStruct = courseStruct
        self._date = date
        self._remarks = remarks
    }
    
    
    // Initializer for an object of this class where the date and time are set to the curr time and date
    // The convenience keyword alongside the self.init work together to simplify calling the main initializer and pass in some values
    convenience init(isAbsent: String, courseStruct: Course, remarks:Bool) {
        self.init(isAbsent: isAbsent, courseStruct: courseStruct, date: Date(), remarks: remarks)
    }
    
    // The modified getter and setters for the absence status to make it easier to set the values
    var absenceStatus: String {
        get {
            return _isAbsent ? "Absent" : "Late"
        }
        set (newStatus) {
            if newStatus == "Absent" {
                _isAbsent = true
            } else if newStatus == "Late" {
                _isAbsent = false
            }
        }
    }
    
    // Allows you to get a string representation of the date formatted following the format: Sep 7, 2024, 10:00 PM
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: <#T##Date#>)
    }
    

}

