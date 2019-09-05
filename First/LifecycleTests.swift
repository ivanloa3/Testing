//
//  LifecycleTests.swift
//  FirstTests
//
//  Created by Ivan Erwin Lopez Ansaldo on 8/21/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import XCTest

class LifecycleTests: XCTestCase {


    override class func setUp() {
        print("In class setUp")
    }

    override class func tearDown() {
        print("In class tearDown")
    }
    
    override func setUp() {
        print("In setUp")
    }
    
    override func tearDown() {
        print("In tearDown")
    }
    
    func testExample() {
        print("Starting tests")
        
        addTeardownBlock {
            print("In second tearDown block")
        }
        print("Finishing test")
    }
}
