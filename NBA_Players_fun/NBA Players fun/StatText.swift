//
// Created by Jakub Jirák on 19/01/2020.
// Copyright (c) 2020 JakubJirak. All rights reserved.
//

import SwiftUI

struct StatText: View {
    var statName: String
    var statValue: String

    var body: some View {
        HStack{
            Spacer()
            Text(statName).font(.largeTitle).fontWeight(.bold).padding(.trailing, 30)
            Text(statValue).font(.largeTitle).fontWeight(.light).padding(.trailing, 30)
            Spacer()
        }

    }
}

#if DEBUG
struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "Key", statValue: "value")
    }
}
#endif