import UIKit
import Foundation

extension Double {
    var km : Double { return self * 1000.0 }
    var m : Double { return self }
    var cm : Double { return self / 100.0 }
    var mm : Double { return self / 1000.0 }
    var ft : Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("Один фут - это \(oneInch) метра")
let threeFeet = 3.ft
print("Три фута - это \(threeFeet) метра")

struct Line {
    var pointOne : (Double, Double)
    var pointTwo : (Double, Double)
}

extension Double {
    init(line : Line) {
        self = sqrt(pow(line.pointTwo.0 - line.pointOne.0, 2) + pow((line.pointTwo.1 - line.pointOne.1), 2))
    }
}

var myLine = Line(pointOne: (10, 10), pointTwo: (14, 10))
var lineLength = Double(line: myLine)

extension Int {
    func repetitions(task: () -> ()) {
        for _ in 0..<self {
            task()
        }
    }
}

3.repetitions {
    print("Swift")
}

extension Int {
    mutating func square() {
        self = self * self
    }
}

var someInt = 3
someInt.square()

extension Int {
    subscript (digitIndex : Int) -> Int {
        var base = 1
        var index = digitIndex
        while index > 0 {
            base *= 10
            index -= 1
        }
        return (self / base) % 10
    }
}
325[0]
325[1]

// Task 1
extension Int {
    var asDouble : Double { return Double(self) }
    var asFloat : Float { return Float(self) }
    var asString : String { return String(self) }
}

