//
//  DiaperButton.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 3/1/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct DiaperButton: View {
    @State var newWetDiaper:Int = 0
    @State var newDirtyDiaper:Int = 0
    @State var newDiapersChanged:Int = 0
    
    var body: some View {
        Button(action: {
            self.newDirtyDiaper += 1
            self.newDiapersChanged += 1
        }) {
            DiaperChangeButtonView(diaperText: "Dirty Diaper", image: "Dirtyopendiaper")
        }.padding()
    }
}

struct DiaperButton_Previews: PreviewProvider {
    static var previews: some View {
        DiaperButton()
    }
}
