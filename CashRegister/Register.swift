


struct Register {
    var items: [Item] = []
    var total: Double {
        return items.count > 0 ? items.reduce(0) { $0 + $1.price } : 0.00
    }
    
    private(set) var totalSales = 0.00
    
    mutating func add(items items: Item...) {
        self.items += items
    }
    
    mutating func pay(payment payment: CreditCard) {
        totalSales += total
        items = []
        print("Thank you!")
    }
    
}


