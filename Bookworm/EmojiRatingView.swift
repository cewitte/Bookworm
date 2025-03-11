//
//  EmojiRatingView.swift
//  Bookworm
//
//  Created by Carlos Eduardo Witte on 02/03/25.
//

import SwiftUI

struct EmojiRatingView: View {
    let rating: Int
    
    var body: some View {
        switch rating {
        case 1:
            Text("😡")
        case 2:
            Text("😓")
        case 3:
            Text("🫤")
        case 4:
            Text("🙂")
        case 5:
            Text("😍")
        default:
            Text("😳")
        }
    }
}

#Preview {
    EmojiRatingView(rating: 6)
}
