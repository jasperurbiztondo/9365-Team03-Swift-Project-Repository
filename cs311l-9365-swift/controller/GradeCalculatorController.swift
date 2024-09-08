//
//  GradeCalculatorController.swift
//  cs311l-9365-swift
//
//  Created by Sebastian Siccuan on 9/8/24.
//

import SwiftUI

class GradeCalculatorController: ObservableObject {
    @Published var gradeModels: [GradeCalculatorModel] = Array(repeating: GradeCalculatorModel(course: "", units: 0, grade: 0.0), count: 10)
    
    var totalWeightedGrade: Double {
        gradeModels.reduce(0) { $0 + (Double($1.units) * $1.grade) }
    }
    
    var totalUnits: Int {
        gradeModels.reduce(0) { $0 + $1.units }
    }
    
    var gwa: Double {
        guard totalUnits > 0 else { return 0 }
        return totalWeightedGrade / Double(totalUnits)
    }
}

