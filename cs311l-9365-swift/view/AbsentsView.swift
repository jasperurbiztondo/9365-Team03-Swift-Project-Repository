//
//  AbsentsView.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/1/24.
//

import SwiftUI


struct AbsentsView: View {
    @State var isShowingTextField = false
    @State var courseName = ""
    @State var schedule = ""
    @State var isAbsent = "Absent"
    @State var isExcused = false
    @State var newAbsent: Absent?
    @State var submittedText = ""
    
    //Make sure to spread the line wider for the course,
    //schedule, absence and shit
    //Use the print stuff from schedview
    
    var body: some View {
        VStack(){
            ZStack() {
                Button(action: {
                    isShowingTextField.toggle()
                }) {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 25))
                }
                .frame(width: 950, height: 30, alignment: .trailing) //this is inline with the rectangle's width
                .background(Color.clear) //so there's no weird box behind the button
                
                Text(submittedText)
                    .fontWeight(.medium)
                    .lineLimit(1)
                    .frame(maxWidth: 950, alignment: .leading)
            }
            
            Rectangle()
                .fill(Color.white)
                .frame(width: 960, height: 1)
            
            if isShowingTextField {
                VStack {
            
                    TextField("Name of the Course", text: $courseName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.top, 5)
                        .frame(maxWidth: 950) //this is in-line with the rectangle's width
                    
                    TextField("What's your schedule?", text: $schedule)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.top, 5)
                        .frame(maxWidth: 950) //this is in-line with the rectangle's width
                    
                    Picker("Absence Status", selection: $isAbsent) {
                        Text("Absent").tag("Absent")
                        Text("Late").tag("Late")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(maxWidth:950)
                    .padding(.top, 5)
                    
                    Toggle("Excused", isOn: $isExcused)
                        .padding(.top, 5)
                    
                    Button(action: {
                        submittedText = "Course Name: \(courseName), Schedule: \(schedule), Is Absent: \(isAbsent), Is Excused: \(isExcused)"
                    }) {
                        Text("Submit")
                    }
                    .padding(.top, 5)
                }
                
            }

        
        }
    }
}
    
#Preview {
    AbsentsView()
}
