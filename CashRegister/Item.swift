//
//  Item.swift
//  CashRegister
//
//  Created by BJ Miller on 11/21/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import Foundation


struct Item {
    let name: String
    var price: Double {
        didSet {
            price = Item.validatePositivePrice(price)
        }
    }
    private static func validatePositivePrice(price: Double) -> Double {
        return max(price, 0)
    }
    
    init(name: String, price: Double) {
        self.name = name
        self.price = Item.validatePositivePrice(price)
    }
}

extension Item: Equatable {}

func ==(left: Item, right: Item) -> Bool {
    return left.name == right.name
        && left.price == right.price
}