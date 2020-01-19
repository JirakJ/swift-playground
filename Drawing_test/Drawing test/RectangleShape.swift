//
// Created by Jakub Jirák on 19/01/2020.
// Copyright (c) 2020 JakubJirak. All rights reserved.
//

import SwiftUI

struct RectangleShape: View {
    var body: some View {
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
        }
    }
}
