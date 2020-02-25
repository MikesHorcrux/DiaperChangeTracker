//
//  DiaperChangeView.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/18/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct DiaperChangeView: View {
    
    @State var newWetDiaper:Int = 0
    @State var newDirtyDiaper:Int = 0
    @State var newDiapersChanged:Int = 0
    var body: some View {
        VStack {
            HStack{
                Button(action: {
                    self.newDirtyDiaper = 1
                }) {
                    ZStack{
                        if newDirtyDiaper == 1{
                            Capsule()
                                .frame(width: 120, height: 30)
                            Text("Dirty Diaper")
                                .foregroundColor(.black)
                        }
                        else{
                            Text("Dirty Diaper")
                            .foregroundColor(.black)
                        }
                    }
                }.padding()
                Button(action: {
                    self.newWetDiaper = 1
                }) {
                    ZStack{
                    Text("Wet Diaper")
                        
                    }
                }.padding()
            }.padding()
           
            AddButton()
        }
    }
}

struct DiaperChangeView_Previews: PreviewProvider {
    static var previews: some View {
        DiaperChangeView()
    }
}
