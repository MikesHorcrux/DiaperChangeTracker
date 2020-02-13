//
//  HistoryView.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/13/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
    @Environment(\.managedObjectContext)
    var managedObjectContext
    @FetchRequest(fetchRequest: Diaper.getAllDiaper())
    var diaper:FetchedResults<Diaper>
    
    var body: some View {
        List {
            ForEach(self.diaper){
                diaper in
                DiaperView(dirty: diaper.dirtyDiaper, wet: diaper.wetDiaper, date: diaper.date)
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
