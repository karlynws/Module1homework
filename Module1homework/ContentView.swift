//
//  ContentView.swift
//  Module1homework
//
//  Created by Karlyn Sanders on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var red = 50.0
    @State private var green = 50.0
    @State private var blue = 50.0

    @State private var setRed = 0.5
    @State private var setGreen = 0.5
    @State private var setBlue = 0.5
    

    
    var body: some View {
        VStack {
            Text("Color Picker")
                .kerning(0.5)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: 0)
                .fill(Color(red: setRed, green: setGreen, blue: setBlue))
                .scaledToFit()
                .frame(width: 350, height: 350)
            Text("Red")
            HStack {
                Slider(value: $red,
                       in: 0...255,
                       step: 1)
                Text("\(Int(red))")
            }
            .padding(.horizontal)
            Text("Green")
            HStack {
                
                Slider(value: $green,
                       in: 0...255,
                       step:1)
                Text("\(Int(green))")
            }
            .padding(.horizontal)
            Text("Blue")
            HStack {
                Slider(value: $blue,
                       in: 0...255,
                       step: 1)
                Text("\(Int(blue))")
            }
            .padding(.horizontal)
            Button("Set Color") {
               
                //values of the sliders will be used to set the color of the roundedrectangle
                // if setColor is true(pressed) then color is (red slider value divided by 255, green color slider value divided by 255, blue color slider value divided by 255)
            }
        }
       
    }
}

#Preview {
    ContentView()
}
//let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
//Note that those values are percentages between 0 and 1. To calculate the percentage, divide the slider value by 255.
