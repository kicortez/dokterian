//
//  MainView.swift
//  dokterian
//
//  Created by Kim Cortez on 5/31/24.
//

import SwiftUI

struct MainView: View {
  @State private var selectedTab = 0
  
  var body: some View {
    VStack {
      TabView(selection: $selectedTab) {
        HomeView()
          .tag(0)
        
        Text("Schedule")
          .tag(1)
        
        Text("Chat")
          .tag(2)
        
        Text("Profile")
          .tag(3)
      }
      
      Divider()
      
      HStack {
        ForEach(MainTab.allCases, id: \.rawValue) { tab in
          VStack {
            HStack {
              Image(systemName: tab.icon + (isTabSelected(tab) ? ".fill" : ""))
                .foregroundStyle(Color.blue)
              
              if isTabSelected(tab) {
                Text(tab.title)
                  .foregroundStyle(Color.blue)
                  .font(.footnote.bold())
                  .transition(.opacity)
              }
            }
            .padding(12)
            .background(isTabSelected(tab) ? Color.blue.opacity(0.1) : Color.clear)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .onTapGesture {
              withAnimation {
                selectedTab = tab.rawValue
              }
              
            }
          }
        }
      }
      .frame(maxWidth: .infinity)
      .padding(.horizontal, 16)
    }
  }
  
  private func isTabSelected(_ tab: MainTab) -> Bool {
    return selectedTab == tab.rawValue
  }
}

enum MainTab: Int, CaseIterable {
  case home = 0
  case schedule
  case chat
  case profile
  
  var title: String {
    switch self {
    case .home:
      return "Home"
    case .schedule:
      return "Schedule"
    case .chat:
      return "Chat"
    case .profile:
      return "Profile"
    }
  }
  
  var icon: String {
    switch self {
    case .home:
      return "house.circle"
    case .schedule:
      return "calendar.circle"
    case .chat:
      return "message.circle"
    case .profile:
      return "person.circle"
    }
  }
}

#Preview {
  MainView()
}
