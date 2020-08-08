//
//  ContentView.swift
//  fightcard
//
//  Created by Amarjit on 08/08/2020.
//  Copyright © 2020 Amarjit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("UFC Fight Night").font(.headline)
                Text("Date: Sun, 2 Aug").font(.caption)
                Text("Venue: UFC Apex, Las Vegas").font(.caption)
            }
            VStack {
                Text("Middleweight · Main Event")
                HStack {
                    AvatarView(imageName: "derek-brunson")
                    VStack {
                        Text("Derek Brunson")
                        Text("21 - 7 - 0").font(.caption)
                    }
                }
                HStack {
                   AvatarView(imageName: "edmen-shahbazyan")
                   VStack {
                       Text("Edmen Shahbazyan")
                       Text("11 - 1 - 0").font(.caption)
                   }
               }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
