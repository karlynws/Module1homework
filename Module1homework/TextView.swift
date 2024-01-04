//
//  TextView.swift
//  Module1homework
//
//  Created by Karlyn Sanders on 1/2/24.
//

import SwiftUI

struct TitleText: View {
  var text: String
  var body: some View {
    VStack {
      Text(text)
        .kerning(0.5)
        .font(.title)
        .bold()
    }
  }
}

struct SliderLabel: View {
  var text: String
  var body: some View {
    Text(text)
  }
}

#Preview {
  VStack {
    TitleText(text:"Title")
    
    SliderLabel(text: "color")
  }
}
