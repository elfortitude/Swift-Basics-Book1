import Cocoa

// Task 1
enum ArithmeticExpression {
    case number( Double )
    indirect case addition( ArithmeticExpression, ArithmeticExpression )
    indirect case subtraction( ArithmeticExpression, ArithmeticExpression )
    indirect case mult( ArithmeticExpression, ArithmeticExpression )
    indirect case div( ArithmeticExpression, ArithmeticExpression )
    indirect case power( ArithmeticExpression, ArithmeticExpression )
    func evaluate(_ expression : ArithmeticExpression? = nil) -> Double {
        switch expression ?? self {
        case let .number(value):
            return value
        case let .addition(valueLeft, valueRight):
            return self.evaluate(valueLeft) + self.evaluate(valueRight)
        case let .subtraction(valueLeft, valueRight):
            return self.evaluate(valueLeft) - self.evaluate(valueRight)
        case let .mult(valueLeft, valueRight):
            return self.evaluate(valueLeft) * self.evaluate(valueRight)
        case let .div(valueLeft, valueRight):
            return self.evaluate(valueLeft) / self.evaluate(valueRight)
        case let .power(valueLeft, valueRight):
            return pow(self.evaluate(valueLeft), self.evaluate(valueRight))
        }
    }
}

var hardExpr = ArithmeticExpression.power(.number(3), .number(3))
print(hardExpr.evaluate())
hardExpr = .mult(.number(3), .number(3))
print(hardExpr.evaluate())

// Task 2
enum Chessman {
    enum Color {
        case black
        case white
    }
    case king(color : Color)
    case queen(color : Color)
    case bishop(color : Color)
    case knight(color : Color)
    case rook(color : Color)
    case pawn(color : Color)
}

func checkColorRook(color : Chessman.Color)
{
    switch color {
    case .black:
        print("black rook")
    case .white:
        print("white rook")
    }
}

let chessKing = Chessman.king(color: .black)
let chessBishop = Chessman.bishop(color: .white)
let chessRook = Chessman.rook(color: .black)

switch chessRook {
case .king(let color):
    if color == .black {
        print("black king")
    } else {
        print("white king")
    }
case .bishop(color: .black):
    print("black bishop")
case .bishop(color: .white):
    print("white bishop")
case .rook(let color):
    checkColorRook(color: color)
default:
    print("another chessman")
}

var color = Chessman.Color.white
print(color)

// Task 4
enum Day {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    var russianDay : String {
        switch self {
        case .sunday:
            return "воскресенье"
        case .monday:
            return "понедельник"
        case .tuesday:
            return "вторник"
        case .wednesday:
            return "среда"
        case .thursday:
            return "четверг"
        case .friday:
            return "пятница"
        case .saturday:
            return "суббота"
        }
    }
}

let monday = Day.monday
print(monday.russianDay)
print(Day.friday.russianDay)
