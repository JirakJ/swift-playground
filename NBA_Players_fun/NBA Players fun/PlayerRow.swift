//
// Created by Jakub Jirák on 19/01/2020.
// Copyright (c) 2020 JakubJirak. All rights reserved.
//

import SwiftUI

struct PlayerRow: View{
    var playerStruct: Player
    var body: some View {
        HStack{
            Image(playerStruct.imageName).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).background(Circle()).foregroundColor(playerStruct.team.color).overlay(Circle().stroke(Color.white, lineWidth: 2)).shadow(radius: 12)
            Text(playerStruct.name).font(.headline).fontWeight(.bold)
            Spacer()
        }

    }
}

#if DEBUG
struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(playerStruct: players[0]).previewLayout(.fixed(width: 500, height: 80))
    }
}
#endif