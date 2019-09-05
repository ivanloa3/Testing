//
//  NotificationTests.swift
//  NotificationTests
//
//  Created by Ivan Erwin Lopez Ansaldo on 8/26/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import XCTest

struct User {
    static let upgradeNotification = Notification.Name("UserUpgraded")
    
    func upgrade(using center: NotificationCenter = NotificationCenter.default) {
        DispatchQueue.global().async {
            Thread.sleep(forTimeInterval: 1)
            center.post(name: User.upgradeNotification, object: nil, userInfo: ["level":"gold"])
        }
    }
}

class NotificationTests: XCTestCase {
    
    func DISABLEtestUserUpgradedPostsNotification() {
        // given
        let user = User()
        let expectation = XCTNSNotificationExpectation(name: User.upgradeNotification)
        
        // when
        user.upgrade()
        
        // then
        wait(for: [expectation], timeout: 3)
    }
    
    func testUserUpgradedPostsNotification() {
        // given
        let center = NotificationCenter()
        let user = User()
        let expectation = XCTNSNotificationExpectation(name: User.upgradeNotification, object: nil, notificationCenter: center)
        expectation.handler = { notification -> Bool in
            guard let level = notification.userInfo?["level"] as? String else {
                return false
            }
            
            if level == "gold" {
                return true
            } else {
                return false
            }
        }
        
        // when
        user.upgrade(using: center)
        
        // then
        wait(for: [expectation], timeout: 3)
    }

}
