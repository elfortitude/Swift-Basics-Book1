import UIKit

// Task 1
let myName = "Lizon"
var myAge : UInt8 = 22
var firstTuple : (name : String, age : Int) = (myName, Int(myAge))

// Task 2
var secondTuple : (Int16, Int16, Int16)
let (a, b) = (10, 5)
secondTuple.0 = Int16(a)
secondTuple.1 = Int16(b)
secondTuple.2 = Int16(a + b)

// Task 5
var a_var = 3
var b_var = 7
(a_var, b_var) = (b_var, a_var)

// Task 6
var thirdTuple : (lovelyFilm : String, lovelyNumber : Int) = ("Interstellar", 3)
let (c, d) = thirdTuple
typealias Man = (lovelyFilm : String, lovelyNumber : Int)
var fourthTuple : Man = ("Great Gatsby", 7)
var fifthTuple = thirdTuple
thirdTuple = fourthTuple
fourthTuple = fifthTuple
var sixthTuple = (thirdTuple.lovelyNumber, fourthTuple.lovelyNumber, thirdTuple.lovelyNumber - fourthTuple.lovelyNumber)
