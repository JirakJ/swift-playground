//
// Created by Jakub Jirák on 19/01/2020.
// Copyright (c) 2020 JakubJirak. All rights reserved.
//

import SwiftUI

struct PlayerList: View{
    var body: some View {
        NavigationView{
            List(players) {
                currentPlayer in
                    NavigationLink(destination: PlayerDetail(playerStruct: currentPlayer)){
                        PlayerRow(playerStruct: currentPlayer).frame(height: 80)
                    }
            }.navigationBarTitle(Text("NBA Finals Players"))
        }
    }
}

#if DEBUG
struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
#endif
