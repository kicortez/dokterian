//
//  DoctorScheduleView.swift
//  dokterian
//
//  Created by Kim Cortez on 5/31/24.
//

import SwiftUI

struct DoctorScheduleView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 16) {
      HStack {
        Image("")
          .frame(width: 48, height: 48)
          .background(Color.gray.opacity(0.5))
          .clipShape(Circle())
        
        VStack(alignment: .leading, content: {
          Text("Dr. Imran Syahir")
            .font(.callout.bold())
          
          Text("General Doctor")
            .font(.footnote)
        })
        
        Spacer()
        
        Image(systemName: "chevron.right")
      }
      
      Divider()
      
      HStack(spacing: 12) {
        HStack {
          Image(systemName: "calendar")
          
          Text("Sunday, 12 June")
            .font(.caption)
        }
        
        HStack {
          Image(systemName: "clock")
          
          Text("11:00 - 12:00 AM")
            .font(.caption)
        }
        
      }
    }
    .padding(16)
    .background(Color.blue)
  }
}

#Preview {
  DoctorScheduleView()
}
