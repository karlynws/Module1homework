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
                setRed = red/255
                setGreen = green/255
                setBlue = blue/255
                
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}

