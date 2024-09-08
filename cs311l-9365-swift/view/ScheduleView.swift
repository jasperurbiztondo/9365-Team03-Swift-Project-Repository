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


    var body: some View {

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
