//
//  House.swift
//  First
//
//  Created by Ivan Erwin Lopez Ansaldo on 8/27/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation

struct House {
    var bedrooms: Int
    var bathrooms: Int
    var cost: Int
    
    init(bedrooms:Int, bathrooms:Int) {
        self.bedrooms = bedrooms
        self.bathrooms = bathrooms
        self.cost = bedrooms * bathrooms * 50_000
    }
    
    func checkSuitability(desiredBedrooms: Int, desiredBathrooms: Int) -> Bool {
        if bedrooms >= desiredBedrooms && bathrooms >= desiredBathrooms {
            return true
        } else {
            return false
        }
    }
}
