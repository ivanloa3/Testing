//
//  ConverterTests.swift
//  FirstTests
//
//  Created by Ivan Erwin Lopez Ansaldo on 8/21/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import XCTest
@testable import First

class ConverterTests: XCTestCase {
    // sut: system under test
    var sut: Converter!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        continueAfterFailure = false
        
        sut = Converter()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    
    func test32FahrenheitIsZeroCelsius() {
        // given
        let input = 32.0
        
        // when
        let celsius = sut.convertToCelisus(fahrenheit: input)
        
        // then
//        XCTAssertEqual(output, 0)
        XCTAssertEqual(celsius, 0, accuracy: 0.000001)
    }
    
    func test212FahrenheitIs100Celsius() {
        // given
        let input = 212.0
        
        // when
        let celsius = sut.convertToCelisus(fahrenheit: input)
        
        // then
//        XCTAssertEqual(output, 100)
        XCTAssertEqual(celsius, 100, accuracy: 0.000001)
    }
    
    func test100FahrenheitIs37Celsius() {
        // given
        let input = 100.0
        
        // when
        let celsius = sut.convertToCelisus(fahrenheit: input)
        
        // then
        XCTAssertEqual(celsius, 37.777777, accuracy: 0.000001)
    }
    
}
