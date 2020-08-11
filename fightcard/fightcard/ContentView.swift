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
        GeometryReader { geometry in
            VStack {
                VStack(alignment: .center, spacing: 1.0) {
                    Text("UFC Fight Night").font(.headline)
                    Text("Sun, 2 Aug").font(.caption)
                    Text("Venue: UFC Apex, Las Vegas").font(.caption)
                }
                VStack {
                    Text("Middleweight · Main Event")
                    HStack(alignment: .center, spacing: 1.0) {
                        HStack {
                             Image("derek-brunson")
                                .resizable()
                                .frame(maxWidth:60, maxHeight: 60, alignment: .center)
                                .clipShape(Circle())
                                    .shadow(radius: 10)
                                    .overlay(
                                     Circle().stroke(Color(UIColor(red:135, green: 135, blue: 135, alpha: 1)),
                                                      lineWidth: 2))
                            VStack(alignment: .leading, spacing: 2.0) {
                                Text("Derek Brunson").font(.headline)
                                Text("21 - 7 - 0").font(.caption)
                             }
                         }
                    }
                }
            }
            .frame(width: geometry.size.width,
                   alignment: .center)
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
