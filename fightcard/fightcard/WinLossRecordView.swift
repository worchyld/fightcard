//
//  WinLossRecordView.swift
//  fightcard
//
//  Created by Amarjit on 06/11/2020.
//  Copyright © 2020 Amarjit. All rights reserved.
//

import SwiftUI

struct WinLossRecordView: View {
    var record: WinLossRecord
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 3, content: {
            Text(String(record.wins)).font(.caption)
            Text("-")
            Text(String(record.draws)).font(.caption)
            Text("-")
            Text(String(record.losses)).font(.caption)
        })
    }
}

struct WinLossRecordView_Previews: PreviewProvider {
    static var previews: some View {
        WinLossRecordView(record: WinLossRecord(wins: 3, losses: 2, draws: 1)
        )
    }
}
