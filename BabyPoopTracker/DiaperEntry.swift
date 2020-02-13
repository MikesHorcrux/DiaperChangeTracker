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
    
    
    
    var body: some View {
        VStack{
            
            Button(action: {
                self.newDirtyDiaper = 1
            }) {
                Text("dirty")
            }
            Button(action: {
                self.newWetDiaper = 1
            }) {
                Text("wet")
            }
            
            Button(action: {
                let diaper = Diaper(context: self.managedObjectContext)
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
                Text("Button")
            }
        }
    }
}

struct DiaperEntry_Previews: PreviewProvider {
    static var previews: some View {
        DiaperEntry()
    }
}
