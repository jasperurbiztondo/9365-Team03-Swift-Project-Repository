//
//  LetterGradeView.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/1/24.
//

import SwiftUI

struct LetterGradeView: View {
    @ObservedObject var letterGradeController = LetterGradeController()
    
    var body: some View {
        VStack {
            Text("Grades Overview")
                .font(.title)
                .padding()

            // Header
            HStack {
                Text("Class Code")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                Text("Course Number")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                Text("Title")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                Text("Units")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                Text("Grade")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                Text("Letter Grade")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal)
            
            // Data
            List {
                ForEach(letterGradeController.grades, id: \.course._courseNumber) { grade in
                    HStack {
                        Text(grade.course._classCode)
                            .frame(maxWidth: .infinity)
                        Text(grade.course._courseNumber)
                            .frame(maxWidth: .infinity)
                        Text(grade.course._descriptiveTitle)
                            .frame(maxWidth: .infinity)
                        Text("\(grade.course._units, specifier: "%.1f")")
                            .frame(maxWidth: .infinity)
                        Text("\(grade.grade, specifier: "%.2f")")
                            .frame(maxWidth: .infinity)
                        Text(letterGradeController.letterGrade(for: grade.grade))
                            .frame(maxWidth: .infinity)
                    }
                }
            }
            .listStyle(PlainListStyle())
        }
    }
}

#Preview {
    LetterGradeView()
}
