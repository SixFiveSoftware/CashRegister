//
//  CreditCardTests.swift
//  CashRegister
//
//  Created by BJ Miller on 11/21/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import XCTest
@testable import CashRegister

class CreditCardTests: XCTestCase {

    func testCreditCardInitiallyHasNameNumberExpirationAndCVV() {
        let card = CreditCard(name: "Pete", number: "1234123412341234", expiration: "01/20", cvv: "123")
        XCTAssertEqual(card.name, "Pete")
        XCTAssertEqual(card.number, "1234123412341234")
        XCTAssertEqual(card.expiration, "01/20")
        XCTAssertEqual(card.cvv, "123")
    }
    
    func testCreditCardCanCoverBalance() {
        let card = CreditCard(name: "Pete", number: "1234123412341234", expiration: "01/20", cvv: "123")
        XCTAssertTrue(card.validateCanCover(balance: 66.91))
    }

}
