//
//  TimeRange.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/8/24.
//

import Foundation

struct TimeRange : Identifiable {
    let id = UUID()
    var startTime: String
    var endTime: String
    
    
    var description : String {
        return "\(startTime) - \(endTime)"
    }
    
}
