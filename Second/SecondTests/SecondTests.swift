//
//  SecondTests.swift
//  SecondTests
//
//  Created by Ivan Erwin Lopez Ansaldo on 8/27/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import XCTest
@testable import Second

class SecondTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test4bed2BathHouse_Fits3Bed2BathRequirements() {
        // given
        let house = House(bedrooms: 4, bathrooms: 2)
        let desiredBedrooms = 3
        let desiredBathrooms = 2
        
        // when
        let suitability = house.checkSuitability(desiredBedrooms: desiredBedrooms, desiredBathrooms: desiredBathrooms)
        
        // then
        XCTAssertTrue(suitability)
    }
    
    func testViewingHouseAddsOneToViewings() {
        // given
        let house = House2()
        // when
        house.conductOfViewing()
        // then
        XCTAssertEqual(house.numberOfViewings, 1)
    }
    
    func testBuyerViewingHouseAddsOneToViewings() {
        // given
        let sut = Buyer()
        let houseMock = HouseMock()
        // when
        sut.view(houseMock)
        // then
        XCTAssertEqual(houseMock.numberOfViewings, 1)
        XCTAssertEqual(houseMock.wasCalledConductOfViewing, 1)
    }
}

class HouseMock: House2Protocol {
    var numberOfViewings = 0
    var wasCalledConductOfViewing = 0
    
    func conductOfViewing() {
        wasCalledConductOfViewing += 1
        numberOfViewings += 1
    }
}
