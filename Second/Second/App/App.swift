//
//  App.swift
//  Second
//
//  Created by Ivan Erwin Lopez Ansaldo on 9/2/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation

protocol AppProtocol {
    var price: Decimal {get set}
    var minimumAge: Int {get set}
    var isReleased: Bool {get set}

    func canBePurchased(by user: UserProtocol) -> Bool
    static func printTerms()
}

extension AppProtocol {
    static func printTerms() {
        print("Here are 50 pages of terms and conditionsfor you to read on a tiny phone screen")
    }
}

struct App: AppProtocol {
    
    var price: Decimal
    var minimumAge: Int
    var isReleased: Bool
    
    func canBePurchased(by user: UserProtocol) -> Bool {
        guard isReleased else {
            return false
        }
        
        guard user.funds >= price else {
            return false
        }
        
        return user.age >= minimumAge ? true : false
        
    }
}
