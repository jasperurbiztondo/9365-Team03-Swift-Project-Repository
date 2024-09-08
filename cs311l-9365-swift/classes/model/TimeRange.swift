//
//  TimeRange.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/8/24.
//

import Foundation

class TimeRange {
    var _startTime: Date
    var _endTime: Date
    
    // Basic initializer of class
    init(startTime: Date, endTime: Date) {
        self._startTime = startTime
        self._endTime = endTime
    }
    
    // Will basically return a timeRange following the format 10:30 - 11:30
    var description: String {
        let formatter =  DateFormatter()
        formatter.dateFormat = "HH:mm"
        return "\(_startTime)-\(_endTime)"
    }
}
