//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Kuba Żeligowski on 02.07.2018.
//  Copyright © 2018 huncfut. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetHours() {
        XCTAssert(calcHours(price: 10, wage: 5) == 2)
        XCTAssert(calcHours(price: 10, wage: 9) == 2)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
