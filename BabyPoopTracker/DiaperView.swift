//
//  DiaperView.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/12/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct DiaperView: View {
    var dirty:Int32 = 0
    var wet:Int32 = 0
    var date:Date
    
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                Text("Dirty: \(dirty)")
                Text("Wet: \(wet)")
                Text("Date: \(date)")
            }
        }
    }
}

struct DiaperView_Previews: PreviewProvider {
    static var previews: some View {
        DiaperView(date: Date())
    }
}
