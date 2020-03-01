//
//  UnclickedCard.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 3/1/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct UnclickedCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
        .fill(Color("Background"))
            .shadow(color: Color("shadowdark"), radius: 10, x: 10, y: 10)
            .shadow(color: Color("shadowlight"), radius: 10, x: -5, y: -5)
        .scaledToFit()
    }
}

struct UnclickedCard_Previews: PreviewProvider {
    static var previews: some View {
        UnclickedCard()
    }
}
