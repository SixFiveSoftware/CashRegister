//
//  ItemTests.swift
//  CashRegister
//
//  Created by BJ Miller on 11/21/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import XCTest
@testable import CashRegister

class ItemTests: XCTestCase {
   
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    
    func testItemNameAndPriceAreInitiallySettableInInitializer() {
        let item = Item(name: "Pickle jar", price: 999.99)
        let expectedTitle = "Pickle jar"
        let expectedPrice = 999.99
        XCTAssertEqual(item.name, expectedTitle)
        XCTAssertEqual(item.price, expectedPrice)
    }
    
    func testItemPriceIsNonNegative() {
        let item = Item(name: "Juicer", price: -25.00)
        XCTAssertGreaterThanOrEqual(item.price, 0.0)
    }
    
}
