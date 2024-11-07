//
//  cs311l_9365_swiftTests.swift
//  cs311l-9365-swiftTests
//
//  Created by Rithik Tank on 11/7/24.
//

import Testing
import cs311l_9365_swift

struct cs311l_9365_swiftTests {

    @Test func example() async throws {
        let controller : LetterGradeController = LetterGradeController()
       
        withKnownIssue {
            let result = controller.letterGrade(for: 91);
            #expect(result=="J");
            // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        }
    }

}
