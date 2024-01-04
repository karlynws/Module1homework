//
//  ContentView.swift
//  Module1homework
//
//  Created by Karlyn Sanders on 12/6/23.
//

import SwiftUI

struct ContentView: View {
  @Environment(\.verticalSizeClass) var verticalSizeClass
  
  @State private var redSlider = 127.0
  @State private var greenSlider = 127.0
  @State private var blueSlider = 127.0
  
  @State private var viewBox: Color = Color(red: 0.5, green: 0.5, blue: 0.5)
  
  
  var body: some View {
    
   let layout =  verticalSizeClass == .compact ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
    
  
    VStack {
      layout {
        
        ColorBox(viewBox: viewBox)
        InteractiveBox(redSlider: $redSlider, greenSlider: $greenSlider, blueSlider: $blueSlider,  viewBox: $viewBox)
      }
    }
    .padding()
  }
}



struct ColorBox: View {
  
  var viewBox: Color
  var body: some View {
    VStack {
      TitleText(text: "Color Picker")
      
      RoundedRectangle(cornerRadius: 0)
      
        .fill(viewBox)
//        .frame(width: 350, height: 350)
        .scaledToFit()
        .border(Color.brown, width: 8)
        .padding(.bottom)
    }
  }
}

struct SliderView: View {
  @Binding var slider: Double
  var sliderTitle: String
  
  var body: some View {
    VStack {
      SliderLabel(text: sliderTitle)
      
      HStack {
        Slider(
          value: $slider,
          in: 0...255,
          step: 1
        )
        Text("\(Int(slider))")
      }
    }
    .padding(.horizontal)
    //    .accentColor(.red)
  }
}

struct InteractiveBox: View{
  @Binding var redSlider: Double
  @Binding var greenSlider: Double
  @Binding var blueSlider: Double
//  @Binding var slider: Double
  @Binding var viewBox: Color
  
  
  var body: some View{
    VStack{
      SliderView(slider: $redSlider, sliderTitle: "Red")
        .accentColor(.red)
      SliderView(slider: $greenSlider, sliderTitle: "Green")
        .accentColor(.green)
      SliderView(slider: $blueSlider, sliderTitle: "Blue")
      
      
      Button("Set Color") {
        
        viewBox = Color(
          red: redSlider / Constants.General.twoFiftyFive,
          green: greenSlider / Constants.General.twoFiftyFive,
          blue: blueSlider / Constants.General.twoFiftyFive
        )
      }
      
      .background(.blue)
      .foregroundColor(.white)
      .bold()
      .buttonStyle(.bordered)
      .overlay(
        RoundedRectangle(cornerRadius: 12)
          .stroke(Color.white, lineWidth: 4)
      )
      .cornerRadius(12)
      
    }
  }
}

  

    
  


#Preview("Light") {
  ContentView()
    .preferredColorScheme(.light)
}
#Preview("Dark") {
  ContentView()
    .preferredColorScheme(.dark)
}

#Preview("Light landscape", traits: .landscapeRight) {
    ContentView()
        .preferredColorScheme(.light)
}
