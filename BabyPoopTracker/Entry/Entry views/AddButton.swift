//
//  AddButton.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/19/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct AddButton: View {
    @Environment(\.managedObjectContext)
    var managedObjectContext
    @FetchRequest(fetchRequest: Diaper.getAllDiaper())
    var diaper:FetchedResults<Diaper>
    
    
    @State var newWetDiaper:Int = 0
    @State var newDirtyDiaper:Int = 0
    @State var newDiapersChanged:Int = 0
    
    var body: some View {
        Button(action: {
            let diaper = Diaper(context: self.managedObjectContext)
            diaper.diapersChanged = Int32(self.newDiapersChanged)
            diaper.wetDiaper = Int32(self.newWetDiaper)
            diaper.dirtyDiaper = Int32(self.newDirtyDiaper)
            diaper.diapersChanged = Int32(self.newDiapersChanged)
            diaper.date = Date()
            
            do{
                try self.managedObjectContext.save()
            }catch{
                print(error)
            }
            
            self.newWetDiaper = 0
            self.newDirtyDiaper = 0
            self.newDiapersChanged = 0
        }){
            ZStack{
                Capsule()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 30)
                    
                Text("Add")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
        
            
        }
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}
