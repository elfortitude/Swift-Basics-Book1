import UIKit

class RandonNumberGenerator {
    var min : Int
    var max : Int
    init(min : Int, max : Int) {
        self.min = min
        self.max = max
    }
    func getNumber() -> Int {
        return Int.random(in: self.min...self.max)
    }
}

struct Employee {
    let firstName : String
    let secondName : String
    var salary : Int
}

let names = ["Marina", "Igor", "Lizon", "Mark", "Anya"]
let secondNames = ["Khalunina", "Usachev", "Usacheva", "Velichko", "Shulgina"]

var person = Employee(firstName: names[RandonNumberGenerator(min: 0, max: names.count - 1).getNumber()], secondName: secondNames[RandonNumberGenerator(min: 0, max: secondNames.count - 1).getNumber()], salary: RandonNumberGenerator(min: 20000, max: 100000).getNumber())
person.firstName
person.secondName
person.salary
