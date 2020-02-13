//
//  ContentView.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/7/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext)
    var managedObjectContext
    @FetchRequest(fetchRequest: Diaper.getAllDiaper())
    var diaper:FetchedResults<Diaper>
    
    var body: some View {
        
        VStack{
            DiaperEntry()
            
            Section(header: Text("To Do(s)")){
                
                ForEach(self.diaper){
                    diaper in DiaperView(dirty: diaper.dirtyDiaper, wet: diaper.wetDiaper, date: diaper.date)
                }.onDelete {indexSet in
                    let deleteItem = self.diaper[indexSet.first!]
                    self.managedObjectContext.delete(deleteItem)
                    
                    do{
                        try self.managedObjectContext.save()
                    }
                    catch{
                        print(error)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
