//
//  AppTests.swift
//  AppTests
//
//  Created by Ivan Erwin Lopez Ansaldo on 9/2/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import XCTest
@testable import Second

struct UnreleasedAppStub: AppProtocol {
    var price: Decimal = 0
    var minimumAge = 0
    var isReleased = false
    
    func canBePurchased(by user: UserProtocol) -> Bool {
        return false
    }
    
}

class AppTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCanBePurchasedAnUnreleasedApp() {
        // given
        var sut = User(funds: 100, age: 21, apps: [])
        let app = UnreleasedAppStub()
        
        // when
        let wasBought = sut.buy(app)
        type(of: app).printTerms()
        // then
        XCTAssertFalse(wasBought)
    }
}
