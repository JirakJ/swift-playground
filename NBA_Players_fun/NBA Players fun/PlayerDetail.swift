//
//  PlayerDetail.swift
//  NBA Players Fun
//
//  Created by Jakub Jirák on 19/01/2020.
//  Copyright © 2020 JakubJirak. All rights reserved.
//

import SwiftUI

struct PlayerDetail: View {
    var playerStruct: Player
    var body: some View {
        VStack {
            Image(playerStruct.team.imageName).resizable().aspectRatio(contentMode: .fit)

            Image(playerStruct.imageName).clipShape(Circle()).background(Circle()).foregroundColor(.white).overlay(Circle().stroke(Color.white, lineWidth: 2)).offset(x:0,y:-90).padding(.bottom, -90).shadow(radius: 12)
            Text(playerStruct.name).font(.largeTitle).fontWeight(.bold)
            StatText(statName: "Age:", statValue: String(playerStruct.age))
            StatText(statName: "Height:", statValue: playerStruct.height)
            StatText(statName: "Weight:", statValue: String(playerStruct.weight))
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct PlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(playerStruct: players[0])
    }
}
