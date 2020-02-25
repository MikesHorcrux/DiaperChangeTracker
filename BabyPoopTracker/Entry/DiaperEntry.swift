//
//  DiaperEntry.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/12/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct DiaperEntry: View {
    
    @State var newWetDiaper:Int = 0
    @State var newDirtyDiaper:Int = 0
    @State var newDiapersChanged:Int = 0
    
    
    
    var body: some View {
        NavigationView {
           
           
        VStack {
            VStack(alignment: .leading){
                Text("Select Diaper Type: ")
                    .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        
                    
                        HStack{
                            Button(action: {
                                self.newDirtyDiaper = 1
                            }) {
                                DiaperChangeButtonView(diaperText: "Dirty Diaper", image: "Dirtyopendiaper")
                            }.padding()
                            Button(action: {
                                self.newWetDiaper = 1
                            }) {
                                DiaperChangeButtonView(diaperText: "Wet Diaper", image: "wetopendiaper")
                            }.padding()
                        }
            }
            .padding()
            .padding(.bottom, 80)
            
            AddButton()
            Spacer()
        }
        .navigationBarTitle("Diaper Change")
        }
        
    }

}

struct DiaperEntry_Previews: PreviewProvider {
    static var previews: some View {
        DiaperEntry()
    }
}
