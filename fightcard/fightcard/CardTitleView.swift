//
//  CardTitleView.swift
//  fightcard
//
//  Created by Amarjit on 27/11/2020.
//  Copyright © 2020 Amarjit. All rights reserved.
//

import SwiftUI

struct CardTitle {
    let headline: String
    let date: String
    let venue: String
}

struct CardTitleView: View {
    let cardTitle: CardTitle
    var body: some View {
        VStack(alignment: .center, spacing: 5.0) {
            Text("\(cardTitle.headline)").font(.title)
            Text("\(cardTitle.date)").font(.caption)
            Text("\(cardTitle.venue)").font(.caption)
        }
    }
}

struct CardTitleView_Previews: PreviewProvider {
    static var previews: some View {
        CardTitleView(cardTitle: CardTitle(headline: "UFC Fight Night Card", date: "Sun, 2 Aug 2020", venue: "Venue: UFC Apex, Las Vegas")
        )
    }
}
