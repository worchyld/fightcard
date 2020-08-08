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
                    Image("derek-brunson")
                    VStack {
                        Text("Derek Brunson")
                        Text("21 - 7 - 0")
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
