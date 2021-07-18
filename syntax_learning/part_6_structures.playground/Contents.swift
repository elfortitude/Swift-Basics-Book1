import UIKit

// Task 1
struct Point {
    var x : Double
    var y : Double
    func distance(point : Point) -> Double {
        return sqrt(pow(point.x - self.x, 2) + pow(point.y - self.y, 2))
    }
}

let point = Point(x: 10, y: 20)
print(point.distance(point: Point(x: 15, y: 22)))

// Task 2
enum Color : String {
    case black = "black"
    case white = "white"
}

enum Type : String {
    case king = "king"
    case queen = "queen"
    case bishop = "bishop"
    case knight = "knight"
    case rook = "rook"
    case pawn = "pawn"
}

struct Chessman {
    var color : Color
    var type : Type
    var coordinates : (Character, UInt)?
    var symbol : Character
    init(color : Color, type : Type) {
        self.color = color
        self.type = type
        self.coordinates = nil
        self.symbol = "?"
    }
    init(color : Color, type : Type, coordinates : (Character, UInt), symbol : Character) {
        self.color = color
        self.type = type
        self.coordinates = coordinates
        self.symbol = symbol
    }
    mutating func setCoordinates(char : Character, num : UInt) {
        self.coordinates?.0 = char
        self.coordinates?.1 = num
    }
    mutating func kill() {
        self.coordinates = nil
    }
}

var color = Color.black
var type = Type.queen
var whiteKing = Chessman(color: .white, type: .king)
whiteKing.setCoordinates(char: "C", num: 3)
whiteKing.kill()
var blackKing = Chessman(color: .black, type: .king, coordinates: ("A", 2), symbol: "\u{265A}")

// Task 3
struct User {
    var name : String
    var surname : String
    init(name : String) {
        self.name = name
        self.surname = ""
    }
    init(name : String, surname : String) {
        self.name = name
        self.surname = surname
    }
    func getName() {
        print("User name is \(self.name) and surname is \(self.surname).")
    }
    mutating func changeName(newName : String) {
        self.name = newName
    }
    mutating func changeSurname(newSurname : String) {
        self.surname = newSurname
    }
}

var jack = User(name: "Jack", surname: "London")
jack.name
jack.surname
jack.changeSurname(newSurname: "Podrick")
jack.surname
jack.getName()
