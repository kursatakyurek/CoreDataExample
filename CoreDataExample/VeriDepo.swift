//
//  VeriDepo.swift
//  CoreDataExample
//
//  Created by Kürşat Akyürek on 24.07.2023.
//

import CoreData

@objc(VeriDepo)

class VeriDepo: NSManagedObject{
    
    @NSManaged var firma: String!
    @NSManaged var sektor: String!
}

