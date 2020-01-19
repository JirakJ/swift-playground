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
            Text(playerStruct.name).font(.largeTitle).fontWeight(.bold).lineLimit(1).minimumScaleFactor(0.5)
            StatText(statName: "Age:", statValue: String(playerStruct.age)).lineLimit(1).minimumScaleFactor(0.5)
            StatText(statName: "Height:", statValue: playerStruct.height).lineLimit(1).minimumScaleFactor(0.5)
            StatText(statName: "Weight:", statValue: String(playerStruct.weight)).lineLimit(1).minimumScaleFactor(0.5)
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct PlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            //PlayerDetail(playerStruct: players[0]).previewDevice("iPhone 8")
            //PlayerDetail(playerStruct: players[0]).previewDevice("iPhone 11")
            PlayerDetail(playerStruct: players[0]).previewDevice("iPhone 11 Pro")
            //PlayerDetail(playerStruct: players[0]).previewDevice("iPhone 11 Pro Max")
            //PlayerDetail(playerStruct: players[0]).previewDevice("iPad Pro (11-inch)")

        }
    }
}
