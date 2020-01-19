//
// Created by Jakub Jirák on 19/01/2020.
// Copyright (c) 2020 JakubJirak. All rights reserved.
//

import SwiftUI

struct GeometryTest: View {
    var body: some View {
        GeometryReader {
            geometry in
            Path {
                path in
                path.move(to: CGPoint(x:0, y:0))
                path.addLine(to: CGPoint(x: geometry.size.width, y: geometry.size.height))
            }.stroke(Color.red, lineWidth: 2)
        }
    }
}
