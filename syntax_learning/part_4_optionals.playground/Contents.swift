import UIKit

// Task 4
var optional1 : Optional<String>
var optional2 : String?
var optional3 = Optional("")
var optioonal4 = String(3.14)

// Task 5
typealias Text = String
let const1 : Text = "12"
let const2 : Text = "5"
let const3 : Text = "45ga"
if let _ = Int(const1) {
    print(const1)
}
if let _ = Int(const2) {
    print(const2)
}
if let _ = Int(const3) {
    print(const3)
}

// Task 6
typealias TupleType = (numberOne: Text?, numberTwo: Text?)

var var1 : TupleType = ("190", "67")
var var2 : TupleType = ("100", nil)
var var3 : TupleType = ("-65", "70")

switch var1 {
case (let a, let b) where a != nil && b != nil:
    print("\(var1.numberOne!) \(var1.numberTwo!)")
default:
    break
}

switch var2 {
case (let a, let b) where a != nil && b != nil:
    print("\(var2.numberOne!) \(var2.numberTwo!)")
default:
    break
}

switch var3 {
case (let a, let b) where a != nil && b != nil:
    print("\(var3.numberOne!) \(var3.numberTwo!)")
default:
    break
}

// Task 7
var dictionary = ["Polimkina" : ["09.11.2019" : UInt(4), "11.12.2019" : UInt(5)], "Stefanov" : ["23.11.2019" : UInt(3), "05.12.2019" : UInt(4)], "Prayce" : ["15.11.2019" : UInt(5), "20.12.2019" : UInt(3)]]
var allAverage : Double = 0
var countGrades = 0

for student in dictionary {
    var average : Double = 0
    for lesson in student.value {
        average += Double(lesson.value)
        allAverage += Double(lesson.value)
        countGrades += 1
    }
    average /= Double(student.value.count)
    print("Average of studen \(student.key) = \(average)")
}
allAverage /= Double(countGrades)
print("All average is \(allAverage)")

// Task 9
typealias Coordinates = (alpha : Character?, num : Int?)
typealias Chessman = [String : Coordinates?]
var figures : Chessman = ["White King" : ("c", 6), "White Horse" : ("a", nil), "Black Queen" : ("d", 4)]

for figure in figures {
    if figure.value?.alpha != nil && figure.value?.num != nil {
        print("\(figure.value!.alpha) \(figure.value?.num)")
    } else {
        print("fugure \(figure.key) not on the desk")
    }
}

