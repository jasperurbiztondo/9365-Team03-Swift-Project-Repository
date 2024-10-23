//
//  RefactorView.swift
//  cs311l-9365-swift
//
//  Created by Marvin Patrick Lacanilao on 10/23/24.
//

import SwiftUI
import Foundation

// class
class Grades {
    var sName: String
    var mathGrade: Double
    var scienceGrade: Double
    var englishGrade: Double
    var totalUnits: Int
    var mathUnits: Int
    var scienceUnits: Int
    var englishUnits: Int

    init(studentName: String, mathGrade: Double, scienceGrade: Double, englishGrade: Double, totalUnits: Int, mathUnits: Int, scienceUnits: Int, englishUnits: Int) {
        self.sName = studentName
        self.mathGrade = mathGrade
        self.scienceGrade = scienceGrade
        self.englishGrade = englishGrade
        self.totalUnits = totalUnits
        self.mathUnits = mathUnits
        self.scienceUnits = scienceUnits
        self.englishUnits = englishUnits
    }

    // Weighted Average
    func calculateAverage() -> Double {
        let weightedTotal =
        (mathGrade * Double(mathUnits)) +
        (scienceGrade * Double(scienceUnits)) +
        (englishGrade * Double(englishUnits))
        let average = weightedTotal / Double(totalUnits)
        return average
    }

    // Letter Grade
    func calculateLetterGrade() -> String {
        let weightedTotal = (mathGrade * Double(mathUnits)) +
        (scienceGrade * Double(scienceUnits)) +
        (englishGrade * Double(englishUnits))
        
        let average = weightedTotal / Double(totalUnits)
        
        let letterGrade: String
        
        switch average {
        case 90...:
            letterGrade = "A"
        case 80..<90:
            letterGrade = "B"
        case 70..<80:
            letterGrade = "C"
        case 60..<70:
            letterGrade = "D"
        default:
            letterGrade = "F"
        }
        
        return letterGrade
    }

    // Pass Status
    func didPass() -> [String] {
        var passStatus = [String]()
        let subjects = [("Math", mathGrade), ("Science", scienceGrade), ("English", englishGrade)]

        for (subject, grade) in subjects {
            let status = grade >= 60 ? "passed" : "failed"
            passStatus.append("\(sName) \(status) \(subject).")
        }
        
        return passStatus
    }

    // Summary
    func printGradesSummary() {
        print("\(sName)'s grades:")
        print("Math: \(mathGrade)")
        print("Science: \(scienceGrade)")
        print("English: \(englishGrade)")
    }
}


// UI
struct RefactorView: View {
    @State private var studentGrades = Grades(
        studentName: "Monem",
        mathGrade: 85.0,
        scienceGrade: 90.0,
        englishGrade: 88.0,
        totalUnits: 9,
        mathUnits: 3,
        scienceUnits: 3,
        englishUnits: 3
    )

    @State private var average = ""
    @State private var letterGrade = ""
    @State private var passStatus: [String] = []

    var body: some View {
        VStack(spacing: 20) {
            Text("Grade Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 40)

            Text("Student Name: \(studentGrades.sName)")
                .font(.title2)
                .padding(.top, 10)

            Button(action: {
                let avg = studentGrades.calculateAverage()
                let letter = studentGrades.calculateLetterGrade()
                let pass = studentGrades.didPass()

                average = String(format: "Average: %.2f", avg)
                letterGrade = "Letter Grade: \(letter)"
                passStatus = pass
            }) {
                Text("Calculate Grade")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()

            VStack(spacing: 15) {
                Text(average)
                    .font(.title2)
                    .foregroundColor(.black)

                Text(letterGrade)
                    .font(.title2)
                    .foregroundColor(.black)

                VStack {
                    ForEach(passStatus, id: \.self) { status in
                        Text(status)
                            .font(.body)
                            .foregroundColor(status.contains("Passed") ? .green : .red)
                            .padding(.vertical, 5)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top, 20)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 5)

            Spacer()
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RefactorView()
    }
}
