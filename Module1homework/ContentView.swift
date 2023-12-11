//
//  ContentView.swift
//  Module1homework
//
//  Created by Karlyn Sanders on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var redSlider = 50.0
    @State private var greenSlider = 50.0
    @State private var blueSlider = 50.0
    
    @State private var viewBox: Color = Color(red: 0.5, green: 0.5, blue: 0.5)
    
    
    var body: some View {
        VStack {
            Text("Color Picker")
                .kerning(0.5)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 0)
                .fill(viewBox)
                .scaledToFit()
                .frame(width: 350, height: 350)
            Text("Red")
            HStack {
                Slider(value: $redSlider,
                       in: 0...255,
                       step: 1)
                Text("\(Int(redSlider))")
            }
            .padding(.horizontal)
            Text("Green")
            HStack {
                
                Slider(value: $greenSlider,
                       in: 0...255,
                       step:1)
                Text("\(Int(greenSlider))")
                    .padding(.horizontal)
                Text("Blue")
            }
            HStack {
                Slider(value: $blueSlider,
                       in: 0...255,
                       step: 1)
                Text("\(Int(blueSlider))")
            }
            .padding(.horizontal)
            Button("Set Color") {
                
                viewBox = Color(
                    red: redSlider / 255,
                    green: greenSlider / 255,
                    blue: blueSlider / 255
                )
            }
        }
        
    }
}

#Preview {
    ContentView()
}

