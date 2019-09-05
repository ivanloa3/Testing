//
//  Hater.swift
//  First
//
//  Created by Ivan Erwin Lopez Ansaldo on 8/14/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation

struct Hater {
    var hating = false
    
    mutating func hadABayDay() {
        hating = true
    }
    
    mutating func hadAGoodDay() {
        hating = false
    }
}
