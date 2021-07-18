import UIKit

enum VendingMachineError : Error {
    case InvalidSelection
    case InsufficientFunds(coinsNeed : Int)
    case OutOfStock
}

//throw VendingMachineError.InsufficientFunds(coinsNeed: 5)

//func anotherFunc() throws {
//    var value = try someFunc()
//}
//
//func someFunc() throws -> String {
//    try anotherFunc()
//    return ""
//}
//try someFunc()

struct Item {
    var price : Int
    var count : Int
}

class VendingMachine {
    var inventory = ["Candy Bar" : Item(price: 12, count: 7), "Chips" : Item(price: 10, count: 4), "Pretzels" : Item(price: 7, count: 11)]
    var coinsDeposited = 0
    func dispenceSnack(snack : String) {
        print("Dispencing \(snack)")
    }
    func vend(itemNamed name : String) throws {
        guard var item = inventory[name] else {
            throw VendingMachineError.InvalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineError.OutOfStock
        }
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.InsufficientFunds(coinsNeed: item.price - coinsDeposited)
        }
        coinsDeposited -= item.price
        item.count -= 1
        inventory[name] = item
        dispenceSnack(snack: name)
    }
}

let favoriteSnacks = ["Alice" : "Chips", "Bob" : "Licorice", "Eve" : "Pretzels"]

func buyFavoriteSnack(person : String, vendingMachine : VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8
do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
} catch VendingMachineError.InvalidSelection {
    print("Invalid Selection.")
} catch VendingMachineError.OutOfStock {
    print("Out of stock.")
} catch VendingMachineError.InsufficientFunds(let coinsNeed) {
    print("Недостаточно средств. Пожалуйста, внесите еще \(coinsNeed) монет(ы).")
}
