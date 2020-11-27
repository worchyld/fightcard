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
                // List of 8 segments/fights
                List {
                    HStack(alignment: .center, spacing: 10.0, content: {
                        FighterLeftCellView(fighter: Fighter(name: "Conor Mcgregor", avatar: "conor-mcgregor", record: WinLossRecord(wins: 3, losses: 2, draws: 2))
                        )
                        FighterRightCellView(fighter: Fighter(name: "Conor Mcgregor", avatar: "conor-mcgregor", record: WinLossRecord(wins: 3, losses: 2, draws: 2))
                        )
                    }).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
