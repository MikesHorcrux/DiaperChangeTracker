//
//  DiaperChangeButton.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/19/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct DiaperChangeButtonView: View {
    
    @State var diaperText: String
    @State var image: String
    
    var body: some View {
            VStack{
                Image(image)
                    .resizable()
                    .scaledToFit()
                Text(diaperText)
                    .fontWeight(.semibold)
                    .foregroundColor(.purple)
            }
            
    }
}

struct DiaperChangeButton_Previews: PreviewProvider {
    static var previews: some View {
        DiaperChangeButtonView(diaperText: "test", image: "Dirtyopendiaper")
    }
}
