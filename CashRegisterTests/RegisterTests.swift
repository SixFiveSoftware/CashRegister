//
//  RegisterTests.swift
//  CashRegister
//
//  Created by BJ Miller on 11/21/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import XCTest
@testable import CashRegister

class RegisterTests: XCTestCase {

    func testAddItemsToBasket() {
        var register = Register()
        let cat = Item (name: "Halo Kitty", price: 63.69)
        let catnip = Item (name: "Super Catnip", price: 3.22)
        register.add(items: cat)
        register.add(items: catnip)
        XCTAssertEqual(register.items, [cat, catnip])
    }

    func testTotalIsTotalPriceOfItems() {
        var register = Register()
        let cat = Item (name: "Halo Kitty", price: 63.69)
        let catnip = Item (name: "Super Catnip", price: 3.22)
        register.add(items: cat)
        register.add(items: catnip)
        XCTAssertEqual(register.total, 66.91)
    }
    
    func testCanPayForItems() {
        var register = Register()
        let cat = Item (name: "Halo Kitty", price: 63.69)
        register.add(items: cat)
        
        register.pay(payment: CreditCard(name: "Pete", number: "123412341234", expiration: "12/32", cvv: "144"))
        
        XCTAssertEqual(register.totalSales, 63.69)
    }
    

}
