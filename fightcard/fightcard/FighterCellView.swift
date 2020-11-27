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
        FighterCellView(fighter: Fighter(name: "Connor McGreggor", avatar: "conor-mcgregor", wins: 0, draws: 0, losses: 0))
    }
}
#endif

