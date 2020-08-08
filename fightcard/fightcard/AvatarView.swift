//
//  AvatarView.swift
//  fightcard
//
//  Created by Amarjit on 08/08/2020.
//  Copyright © 2020 Amarjit. All rights reserved.
//

import SwiftUI

struct AvatarView: View {
    let imageName: String
    var body: some View {
        Image(self.imageName)
    }
}

#if DEBUG
struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(imageName: "derek-brunson")
    }
}
#endif
