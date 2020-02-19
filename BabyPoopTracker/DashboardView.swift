//
//  DashboardView.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/18/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            Text("SwiftUI")
                .navigationBarTitle("Welcome", displayMode: .inline)
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
