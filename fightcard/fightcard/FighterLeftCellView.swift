//
//  FighterLeftCellView.swift
//  fightcard
//
//  Created by Amarjit on 27/11/2020.
//  Copyright © 2020 Amarjit. All rights reserved.
//

import SwiftUI

struct FighterLeftCellView: View {
    let fighter: Fighter
    var body: some View {
        HStack {
            FighterAvatarView(imageName: fighter.avatar)
            VStack(alignment: .leading, spacing: 0, content: {
                Text("\(fighter.name)").font(.caption)
                WinLossRecordView(record: fighter.record)
            }).padding([.leading], 5.0)
        }
    }
}

struct FighterLeftCellView_Previews: PreviewProvider {
    static var previews: some View {
        FighterLeftCellView(fighter: Fighter(name: "Conor Mcgregor", avatar: "conor-mcgregor", record: WinLossRecord(wins: 3, losses: 2, draws: 2))
        )
    }
}
