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
                    Text("UFC Fight Night Card").font(.title).padding(.bottom, 10.0)
                    Text("Sun, 2 Aug 2020").font(.caption)
                    Text("Venue: UFC Apex, Las Vegas").font(.caption)
                }
                VStack {
                    Text("Middleweight · Main Event")
                        .font(.headline)
                        .padding(.top, 10.0)
                    HStack(alignment: .center, spacing: 15.0) {
                        HStack {
                            FighterCellView(fighter: Fighter(name: "Derek Brunson", avatar: "derek-brunson", wins: 21, draws: 7, losses: 0))
                        }
                        HStack {
                            FighterCellView(fighter: Fighter(name: "Khabib Nurmagomedov", avatar: "khabib-nurmagomedov", wins: 29, draws: 0, losses: 0))
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
