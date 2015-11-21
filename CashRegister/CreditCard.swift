//
//  CreditCard.swift
//  CashRegister
//
//  Created by BJ Miller on 11/21/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

struct CreditCard {
    let name: String
    let number: String
    let expiration: String
    let cvv: String
    
    func validateCanCover(balance balance: Double) -> Bool {
        return true
    }
    
}