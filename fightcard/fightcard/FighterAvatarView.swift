//
//  AvatarView.swift
//  fightcard
//
//  Created by Amarjit on 08/08/2020.
//  Copyright © 2020 Amarjit. All rights reserved.
//

import SwiftUI

struct FighterAvatarView: View {
    let imageName: String
    var body: some View {
        Image(self.imageName)
            .resizable()
            .frame(maxWidth: 50, maxHeight: 50, alignment: .center)
            .clipShape(Circle())
                   .overlay(
                    Circle().stroke(Color.gray, style: StrokeStyle(lineWidth: 2.5))
                   )
    }
}

#if DEBUG
struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        FighterAvatarView(imageName: "conor-mcgregor")
    }
}
#endif
