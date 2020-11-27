//
//  FighterCellView.swift
//  fightcard
//
//  Created by Amarjit on 05/11/2020.
//  Copyright © 2020 Amarjit. All rights reserved.
//

import SwiftUI

struct FighterCellView: View {
    var fighter: Fighter
    var body: some View {
        HStack {
            AvatarView(imageName: fighter.avatar)
            VStack(alignment: .leading, spacing: 2.0) {
                Text(fighter.name).font(.subheadline).bold().textContentType(.name).frame(maxWidth: 85, alignment: .leading)
            }
        }
    }
}

#if DEBUG
struct FighterCellView_Previews: PreviewProvider {
    static var previews: some View {
    FighterCellView(fighter: Fighter(name: "Conor Mcgregor", avatar: "conor-mcgregor", record: WinLossRecord(wins: 3, losses: 2, draws: 2)))
    }
}
#endif

