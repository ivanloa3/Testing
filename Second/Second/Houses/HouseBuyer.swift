//
//  Buyer.swift
//  Second
//
//  Created by Ivan Erwin Lopez Ansaldo on 9/19/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation

class Buyer {
    func view(_ house: House) {
        house.conductOfViewing()
    }
}

class House {
    var numberOfViewings = 0
    
    func conductOfViewing() {
        numberOfViewings += 1
    }
}
