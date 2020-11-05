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
                Text(fighter.name).font(.subheadline).textContentType(.name)
                HStack(alignment: .firstTextBaseline, spacing: 3, content: {
                    Text(String(fighter.wins)).font(.caption)
                    Text("-")
                    Text(String(fighter.draws)).font(.caption)
                    Text("-")
                    Text(String(fighter.losses)).font(.caption)
                })
            }
        }
    }
}

#if DEBUG
struct FighterCellView_Previews: PreviewProvider {
    static var previews: some View {
        FighterCellView(fighter: Fighter(name: "Derek Brunson", avatar: "derek-brunson", wins: 21, draws: 7, losses: 0))
    }
}
#endif

