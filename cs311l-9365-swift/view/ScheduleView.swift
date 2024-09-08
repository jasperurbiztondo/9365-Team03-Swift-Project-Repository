//
//  ScheduleView.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/8/24.
//

import SwiftUI

import Foundation

struct ScheduleView: View {
    @ObservedObject var scheduleController = ScheduleController()

    let test = Course(
        classCode:"9367",
        courseNumber: "CS 313",
        title: "Software Engineering",
        units: 3.0,
        days:"WTTHS",
        time:TimeRange(startTime:"10:30", endTime:"11:30")
    )

    var body: some View {
/*        List {
            ForEach(scheduleController.courses) { course in
                Text(course.description)
            }
        }
 */
        VStack {
            
            Text("| Class Code | Course Number | Title | Units | Days | Time |")
            List {
                ForEach(scheduleController.courses) { course in
                    Text(course.description)
                }
            }
        }
    }
}

#Preview {
    LetterGradeView()
}
