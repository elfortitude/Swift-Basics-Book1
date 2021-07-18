import UIKit

// from past lesson

class Quadruped {
    var type = ""
    var name = ""
    func walk () {
        print("walk")
    }
}

//

class Dog : Quadruped {
    override init() {
        super.init()
        self.type = "dog"
    }
    convenience init(text : String) {
        self.init()
        print(text)
    }
    func bark() {
        print("woof")
    }
    func printName() {
        print(self.name)
    }
}

var someDog = Dog(text: "Экземляр класса Dog создан")

class Rectangle {
    var height : Int
    var weight : Int
    init? (height h : Int, weight w : Int) {
        self.height = h
        self.weight = w
        if !(h > 0 && w > 0) {
            return nil
        }
    }
}

var rectangle = Rectangle(height: 56, weight: -32)

enum TemperatureUnit {
    case Kelvin, Celsius, Fahrenheit
    init? (symbol : Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "C":
            self = .Celsius
        case "F":
            self = .Fahrenheit
        default:
            return nil
        }
    }
}

enum TemperatureUnit2 : Character {
    case Kelvin = "K", Celsius = "C", Fahrenheit = "F"
}

let fahrenheitUnit = TemperatureUnit(symbol: "F")
let fahrenheitUnit2 = TemperatureUnit2(rawValue: "F")
fahrenheitUnit2!.hashValue

class SuperClass {
    init?(isNil : Bool) {
        if isNil {
            return nil
        } else {
            print("Экземпляр создан")
        }
    }
    deinit {
        print("Деинициализатор суперкласса")
    }
}

class SubClass : SuperClass {
    deinit {
        print("Деинициализатор подкласса")
    }
}

var obj = SubClass(isNil: false)
obj = nil

// Task 1
enum DayOfWeek : Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
    init? (nameOfDay : String) {
        switch nameOfDay {
        case "понедельник":
            self = .monday
        case "вторник":
            self = .tuesday
        case "среда":
            self = .wednesday
        case "четверг":
            self = .thursday
        case "пятница":
            self = .friday
        case "суббота":
            self = .saturday
        case "воскресенье":
            self = .sunday
        default:
            return nil
        }
    }
}

var day = DayOfWeek(nameOfDay: "воскресенье")
day!.rawValue
