//
//  ContentView.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/7/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            DashboardView().tabItem
                { Text("Dash Board") }.tag(1)
            DiaperEntry().tabItem
                { Text("Entry") }.tag(2)
            Text("History").tabItem
                { Text("History") }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
