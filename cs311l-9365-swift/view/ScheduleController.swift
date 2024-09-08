//
//  ScheduleController.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/8/24.
//

import Foundation


class ScheduleController : ObservableObject{
    var courses : [Course]
    
    init() {
        var timeObj1 = TimeRange(
            startTime:"01:30", endTime:"02:30")
        
        courses = [Course(
            classCode:"9365A",
            courseNumber: "CS 311",
            title: "Applications Development (LEC)",
            units: 2.0,
            days:"WS",
            time:timeObj1)
        ]
    }
    
}
