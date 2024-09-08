//
//  TimeRange.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/8/24.
//

import Foundation

class TimeRange {
    var _startTime: String
    var _endTime: String
    
    // Basic initializer of class
    init(startTime: String, endTime: String) {
        self._startTime = startTime
        self._endTime = endTime
    }
    
    // Will basically return a timeRange following the format 10:30 - 11:30
    var description: String {
        return "\(_startTime)-\(_endTime)"
    }
}
