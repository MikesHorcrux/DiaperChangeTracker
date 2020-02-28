//
//  DashboardView.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/18/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    @State var entryShowing: Bool = false
    var body: some View {
        NavigationView {
            VStack{
            Text("Dash")
            }
            .navigationBarItems(trailing: Button(action: {
                self.entryShowing = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
            })
                .sheet(isPresented: $entryShowing, content: {
                    DiaperEntry()
                    
                    
                })
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
