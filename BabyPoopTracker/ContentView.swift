//
//  ContentView.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/7/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: Diaper.getAllDiaper())
    var diaper:FetchedResults<Diaper>
    
    var body: some View {
        Text("Hello, Mike this is a github tets")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
