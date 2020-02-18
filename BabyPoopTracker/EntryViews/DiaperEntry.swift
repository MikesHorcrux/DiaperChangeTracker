//
//  DiaperEntry.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/12/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct DiaperEntry: View {
    @Environment(\.managedObjectContext)
    var managedObjectContext
    @FetchRequest(fetchRequest: Diaper.getAllDiaper())
    var diaper:FetchedResults<Diaper>
    
    @State var newWetDiaper:Int = 0
    @State var newDirtyDiaper:Int = 0
    @State var newDiapersChanged:Int = 0
    
    
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    self.newDirtyDiaper = 1
                }) {
                    Image("Dirtyopendiaper")
                    .resizable()
                    .scaledToFit()
                }.padding()
                Button(action: {
                    self.newWetDiaper = 1
                }) {
                    Image("wetopendiaper")
                    .resizable()
                    .scaledToFit()
                }.padding()
            }.padding()
            
            Button(action: {
                let diaper = Diaper(context: self.managedObjectContext)
                diaper.diapersChanged = Int32(self.newDiapersChanged)
                diaper.wetDiaper = Int32(self.newWetDiaper)
                diaper.dirtyDiaper = Int32(self.newDirtyDiaper)
                diaper.date = Date()
                
                do{
                    try self.managedObjectContext.save()
                }catch{
                    print(error)
                }
                
                self.newWetDiaper = 0
                self.newDirtyDiaper = 0
            }) {
                ZStack{
                    if newDirtyDiaper == 1 && newWetDiaper == 0{
                        Capsule()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4437837074, green: 0.5, blue: 0.06995885118, alpha: 1)), Color(#colorLiteral(red: 0.5787474513, green: 0.3215198815, blue: 0, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                            .frame(width: 180, height: 30)
                        Text("Add A Dirty Diaper")
                            .foregroundColor(.white)
                        }
                    else if newDirtyDiaper == 0 && newWetDiaper == 1{
                        Capsule()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1)), Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                            .frame(width: 180, height: 30)
                        Text("Add A Wet Diaper")
                            .foregroundColor(.white)
                    }
                
                
                
                }
            }
        }
    }
}

struct DiaperEntry_Previews: PreviewProvider {
    static var previews: some View {
        DiaperEntry()
    }
}
