import UIKit

protocol SomeProtocol {
    var mustBeSettable : Int { get set }
    var doesNotNeedToBeSettable : Int { get }
}

protocol AnotherProtocol {
    static var someTypeProperty : Int { get set }
}

protocol FullyNamed {
    var fullName : String { get }
}

struct Person : FullyNamed {
    var fullName : String
}

let john = Person(fullName: "John Wick")

protocol RandomNumberGenerator {
    func random() -> Double
    static func getRandomString()
    mutating func changeValue(newValue : Double)
}

protocol Named {
    init(name : String)
}

class Person2 : Named {
    var name : String
    required init(name: String) {
        self.name = name
    }
}

protocol TextRepresentable {
    func asText() -> String
}

extension Int : TextRepresentable {
    func asText() -> String {
        return String(self)
    }
}

5.asText()

extension TextRepresentable {
    func description() -> String {
        return "Данный тип поддерживает протокол TextRepresentable"
    }
}

5.description()

protocol SuperProtocol {
    var someValue : Int { get }
}

protocol SubProtocol : SuperProtocol {
    func someMethod()
}

struct SomeStruct : SubProtocol {
    let someValue: Int = 10
    func someMethod() {
        print("=)")
    }
}

protocol SubProtocol2 : class, SuperProtocol {
    func someMethod()
}

protocol Named2 {
    var name : String { get }
}

protocol Aged {
    var age : Int { get }
}

struct Person3 : Named2, Aged {
    var name : String
    var age : Int
}

func wishHappyBirthday (celebrator : Named2 & Aged) {
    print("С Днем рождения, \(celebrator.name)! Тебе уже \(celebrator.age)!")
}

let birthdayPerson = Person3(name: "Джон Уик", age: 46)
wishHappyBirthday(celebrator: birthdayPerson)
