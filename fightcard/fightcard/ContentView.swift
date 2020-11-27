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
                CardTitleView(cardTitle: CardTitle(headline: "UFC Fight Night Card", date: "Sun, 2 Aug 2020", venue: "Venue: UFC Apex, Las Vegas")
                )
                VStack {
                    Text("Middleweight · Main Event")
                        .font(.headline)
                        .padding(.top, 10.0)
                    HStack(alignment: .center, spacing: 15.0) {
                        HStack {
                            FighterCellView(fighter: Fighter(name: "Conor McGregor", avatar: "conor-mcgregor", record: WinLossRecord(wins: 3, losses: 2, draws: 1)))
                            FighterCellView(fighter: Fighter(name: "Conor McGregor", avatar: "conor-mcgregor", record: WinLossRecord(wins: 3, losses: 2, draws: 1)))
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
