//
//  ThrowingTests.swift
//  FirstTests
//
//  Created by Ivan Erwin Lopez Ansaldo on 8/22/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import XCTest

extension LocalizedError {
    var errorDescription: String? {
        return "\(self)"
    }
}

enum GameError: LocalizedError {
    case notPurchased
    case notInstalled
    case parentalControlDisallowed
}

struct Game {
    let name: String
    
    func play() throws {
        if name == "BioBlitz" {
            throw GameError.notPurchased
        } else if name == "Blastazap" {
            throw GameError.notInstalled
        } else if name == "Dead Storm Rising" {
            throw GameError.parentalControlDisallowed
        } else {
            print("\(name) is OK to play!")
        }
    }
}

class ThrowingTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: Catching Errors in tests
    
    func testPlayingBioBlitzThrows() {
        let game = Game(name: "BioBlitz")
        
        do {
            try game.play()
            XCTFail("BioBlitz has not been purchased.")
        } catch GameError.notPurchased {
            print("Pass test with game \(game.name)")
        } catch {
            XCTFail()
        }
    }
    
    // MARK: Asserting on throws
    
    func testPlayingBlasTazapThrows() {
        let game = Game(name: "Blastazap")
        
        XCTAssertThrowsError(try game.play()) { error in
            XCTAssertEqual(error as? GameError, GameError.notInstalled)
        }
    }
    
    func testPlayingExplodingMonkeyDoesntThrow() {
        let game = Game(name: "Exploding Monkey")
        XCTAssertNoThrow(try game.play())
    }
    
    func testDeadStormRisingThrows() throws {
        let game = Game(name: "Dead Storm Rising")
        XCTAssertThrowsError(try game.play()) { error in
            XCTAssertEqual(error as? GameError, GameError.parentalControlDisallowed)
        }
    }
    
    // MARK: Throwing Tests

    func testCrashyPlaneDoesntThrow() throws {
        let game = Game(name: "Crashy Plane")
        try game.play()
    }
}
