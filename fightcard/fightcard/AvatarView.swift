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
        //Image(uiImage: UIImage(named: self.imageName)!)
        Image(self.imageName)
            .resizable()
            .frame(maxWidth: 60, maxHeight: 60, alignment: .center)
            .clipShape(Circle())
                   .shadow(radius: 10)
                   .overlay(
                    Circle().stroke(Color(UIColor(red:135, green: 135, blue: 135, alpha: 1)),
                                     lineWidth: 2))
    }
}

#if DEBUG
struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(imageName: "derek-brunson")
    }
}
#endif
