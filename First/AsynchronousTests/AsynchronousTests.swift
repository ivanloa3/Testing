//
//  AsynchronousTests.swift
//  AsynchronousTests
//
//  Created by Ivan Erwin Lopez Ansaldo on 8/22/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import XCTest
@testable import First

class AsynchronousTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: Testing asynchronous work
    func DISABLEtestPrimesUpTo100ShouldBe0() {
        // given
        let maximumCount = 100
        let expectation = XCTestExpectation(description: "Calculate primers up to \(maximumCount)")
        
        // when
//        PrimeCalculator.calculate(upTo: maximumCount) {
//            // then
//            XCTAssertEqual($0.count, 25)
//            expectation.fulfill()
//        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testPrimePerformance() {
        measure {
            _ = PrimeCalculator.calculate(upTo: 1_000_000)
        }
    }
}
