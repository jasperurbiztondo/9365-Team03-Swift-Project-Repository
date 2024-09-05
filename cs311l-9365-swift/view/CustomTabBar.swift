//
//  CustomTabBar.swift
//  cs311l-9365-swift
//
//  Created by Rithik Tank on 9/1/24.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case graduationcap
    case book
    case listBullet = "list.clipboard"
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    private var tabColor : Color {
        switch selectedTab {
        case .house:
            return .blue
        case .graduationcap:
            return .green
        case .book:
            return .indigo
        case .listBullet:
            return .green
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) {
                    tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                        .foregroundColor(selectedTab == tab ? tabColor : .gray)
                        .font(.system(size:22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration:0.1)){
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
                
            }
        } 
        .frame(width:nil, height: 60)
        .background(.thinMaterial)
        .cornerRadius(10)
        .padding()
        
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(.house))
}
