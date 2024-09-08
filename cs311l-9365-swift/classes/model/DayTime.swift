//
//  DayTime.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/8/24.
//

import Foundation

class DayTime {
    var _timeRange : TimeRange
    var _day : String
    
    
    // You pass in a time range and a specific date, then the value is set in the class to Monday : 10:30-11:30
    init(timeRange : TimeRange, day: Date) {
        self._timeRange = timeRange
        
        let dayFormatter = DateFormatter()
        dayFormatter.dateFormat = "EEEE" // Follows format Monday,Tuesday...
        
        self._day = dayFormatter.string(from: Date)
    }
    
    
    //
    var description : String {
        return "\(_day) : \(_timeRange)"
    }
}
