//
//  Diaper.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/7/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import Foundation
import CoreData

private class Diapers: NSManagedObject, Identifiable{
    @NSManaged public var date: Date
    @NSManaged public var wetDiaper: Int16
    @NSManaged public var dirtyDiaper: Int16
}
extension Diapers {
    static func getAllDiaper() -> NSFetchRequest<Diapers>{
        let request: NSFetchRequest<Diapers> = Diapers.fetchRequest() as!
        NSFetchRequest<Diapers>
        
        let sortDescriptor = NSSortDescriptor(key: "date", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        return request
    }
    
}
