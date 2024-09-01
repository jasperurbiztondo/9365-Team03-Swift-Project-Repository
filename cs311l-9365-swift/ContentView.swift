//
//  ContentView.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/1/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab : Tab = .house
    
    init() {

    
    }
    
    var body: some View {
        ZStack {
            TabView(selection : $selectedTab) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    
                    switch tab {
                        case .house:
                        LetterGradeView().tag(tab)
                        case .graduationcap:
                            AbsentsView().tag(tab)
                        case .book:
                            CurrentGradeCalculator().tag(tab)
                        case .listBullet:
                            TodoView().tag(tab)
                            
                    }
                }
            }
            VStack {
                Spacer()
                CustomTabBar(selectedTab: $selectedTab)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
