//
//  ContentView.swift
//  Drawing test
//
//  Created by Jakub Jirák on 19/01/2020.
//  Copyright © 2020 JakubJirak. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var multiplier = 0.0
    var body: some View {
        VStack{
            SmileShape()
            Text("Hello, World!")
            Circle().fill(LinearGradient(gradient: .init(colors: [Color.red,Color.black,Color.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing)).overlay(Circle().stroke(Color.black, lineWidth: 2)).shadow(radius: 15).padding(25).rotationEffect(.degrees(180 * multiplier)).animation(.spring())
            Button(action: {
                withAnimation {
                    self.multiplier += 1
                }
            }){
                Text("Animate").rotationEffect(.degrees(180 * multiplier))
            }
            HStack {
                GeometryTest()
                TriangleShape()
            }
            RectangleShape()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
