//
//  HomeView.swift
//  dokterian
//
//  Created by Kim Cortez on 5/31/24.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    ScrollView {
      LazyVStack(spacing: 32) {
        ProfileBannerView()
        
        DoctorScheduleView()
          .clipShape(RoundedRectangle(cornerRadius: 12))
        
        
      }
      .padding()
    }
  }
}

#Preview {
  HomeView()
}
