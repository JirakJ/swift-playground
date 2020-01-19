//
// Created by Jakub Jirák on 19/01/2020.
// Copyright (c) 2020 JakubJirak. All rights reserved.
//

import SwiftUI

struct SmileShape: View {
    var body: some View {
        ZStack {
            GeometryReader {
                geometry in
                Path {
                    path in
                    let width = geometry.size.width
                    let heigth = geometry.size.height
                    path.move(to: CGPoint(x:0, y:heigth))
                    path.addLine(to: CGPoint(x: 0, y: 0))
                    path.addLine(to: CGPoint(x: width, y: 0))
                    path.addLine(to: CGPoint(x: width, y: heigth))
                }.fill(LinearGradient(gradient: .init(colors: [.red,.purple,.black]), startPoint: .topLeading, endPoint: .bottomTrailing))
                Circle()
                Circle().fill(Color.yellow).padding()
                Path {
                    path in
                    let width = geometry.size.width
                    let heigth = geometry.size.height
                    var side: CGFloat = 0.0
                    if width > heigth {
                        side = heigth
                    } else {
                        side = width
                    }
                    path.move(to: CGPoint(x:0, y:heigth))
                    path.addLine(to: CGPoint(x: 0, y: 0))
                    path.addLine(to: CGPoint(x: width, y: 0))
                    path.addLine(to: CGPoint(x: width, y: heigth))
                }.stroke(Color.black, lineWidth: 5)
            }
        }
    }
}
