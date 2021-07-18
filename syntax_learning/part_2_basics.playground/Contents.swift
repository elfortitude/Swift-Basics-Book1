import UIKit

var signedNum : Int = -32
let unsignedNum : UInt = 128
Int8.max
var number = 1_000_000

var isDragon = false
if isDragon {
    print("Привет, Дракон!")
} else {
    print("Привет, Тролль!")
}

// Task 1
var length : Double = 24
var times : Int = 1236
var v = (length * 1000) / Double(times / 60)

// Task 2
var numbOne = 11
var numbTwo = 22
var res = Int("\(numbOne)\(numbTwo)")

// Task 3
var a : Int8 = Int8.max
var b: UInt8 = UInt8.max
print(a)
print(b)

// Task 4
var c = 42
var d : Int = 21
var e = c
c = d
d = e
print("c = \(c)")
print("d = \(d)")

// Task 5
let f : Float = 3.14
var g : Double = 2.76
g = 3

// Task 6
let first = 18
let second : Float = 16.4
let third = 5.7
var summa = Float(first) + second + Float(third)
var proizvedenie = Int(Double(first) * Double(second) * third)
var delenie = Double(second.truncatingRemainder(dividingBy: Float(third)))
print(summa)
print(proizvedenie)
print(delenie)

// Task 7
var a_var = 2
var b_var = 3
let res_2 = (a_var + 4 * b_var) * (a_var - 3 * b_var) + (a_var * a_var)
print(res_2)

// Task 8
var c_var = 1.75
var d_var = 3.25
var res3 = 2 * (c_var + 1) * 2 + 3 * (d_var + 1)
print(res3)
print(type(of: res3))

// Task 9
let length_var = 11
let square = length_var * length_var
let lengthRound = 2 * 3.14 * Double(length_var)
let proizvedenie2 = Double(square) * lengthRound

// Task 10
var luckyString = "Lucky Li"
let loveChar : Character = "M"
var tri = 3
var sem = 7
let resultString = "\(luckyString)\(loveChar)\(tri + sem)"
print(resultString)

// Task 11
print("*   *   *")
print(" * * * * ")
print("  *   *  ")

// Task 12
var day = 4
var nameMonth = "January"
var year = 2021
print("\(year) \(nameMonth) \(day)")

// Task 13
var firstBool = true
var secondBool = false
firstBool && secondBool
firstBool || secondBool

// Task 15
let myName = "Lizon"
var myWeight : Float = 49.9
var myHeight = 164
var imt = myWeight / ((Float(myHeight) / 100) * (Float(myHeight) / 100))
print("My name is \(myName) and my IMT = \(imt).")

// Task 18
let a_var2 = 12.2
let b_var2 = 5.4
let average = Float((a_var2 + b_var2) / 2)
