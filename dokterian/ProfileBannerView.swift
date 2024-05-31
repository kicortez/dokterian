//
//  ProfileBannerView.swift
//  dokterian
//
//  Created by Kim Cortez on 5/31/24.
//

import SwiftUI

struct ProfileBannerView: View {
  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Text("Hello,")
          .foregroundStyle(Color.gray)
          .font(.callout)
        
        Text("Hi James")
          .font(.title3.bold())
      }
      
      Spacer()
      
      Image("")
        .frame(width: 56, height: 56)
        .background(Color.blue)
        .clipShape(Circle())
    }
    
  }
}

#Preview {
  ProfileBannerView()
}
