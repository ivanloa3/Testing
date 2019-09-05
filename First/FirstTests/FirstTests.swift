//
//  FirstTests.swift
//  FirstTests
//
//  Created by Ivan Erwin Lopez Ansaldo on 8/14/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import XCTest
@testable import First

//  [UnitOfWork_StateUnderTest_ExpectedBehavior]
//  test_Hater_AfterHavingAGoodDay_ShouldNotBeHating().

class FirstTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testHatersStartNicely() {
        let hater = Hater()
        
        XCTAssertFalse(hater.hating, "New haters should not be hating")
    }
    
    func testHaterHatesAfterBadDay() {
        // Given
        var hater = Hater()
        // When
        hater.hadABayDay()
        // Then
        XCTAssertTrue(hater.hating)
    }

    func DISABLED_testHaterHappyAfterGoodDay() {
        // Given
        var hater = Hater()
        // When
        hater.hadAGoodDay()
        // Then
        XCTAssertFalse(hater.hating)
    }
}
