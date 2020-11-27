//
//  FighterRightCellView.swift
//  fightcard
//
//  Created by Amarjit on 27/11/2020.
//  Copyright © 2020 Amarjit. All rights reserved.
//

import SwiftUI

struct FighterRightCellView: View {
    let fighter: Fighter
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0, content: {
                Text("\(fighter.name)").font(.caption).fontWeight(.bold)
                WinLossRecordView(record: fighter.record)
            }).padding([.trailing], 5.0)
            AvatarView(imageName: fighter.avatar)
        }
    }
}

struct FighterRightCellView_Previews: PreviewProvider {
    static var previews: some View {
        FighterRightCellView(fighter: Fighter(name: "Conor Mcgregor", avatar: "conor-mcgregor", record: WinLossRecord(wins: 3, losses: 2, draws: 2))
        )
    }
}
