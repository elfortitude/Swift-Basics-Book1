import UIKit

var res = 0
var number = 777
for number in 1...5 {
    res += number
}

// Task 1
let name = "Lizon"
if name == "Lizon" {
    print("Hi, Lizon!")
} else if name == "Mark" {
    print("Hi, Mark!")
} else if name == "Kus'" {
    print("Hi, Kus'")
} else {
    print("Hi everyone!")
}

switch name {
case "Lizon":
    print("Hi, Lizon!")
case "Mark":
    print("Hi, Mark!")
case "Kus'":
    print("Hi, Kus'")
default:
    print("Hi everyone!")
}

// Task 2
var open = true
var message = ""
if open {
    message = "Open"
} else {
    message = "Close"
}
message = ""
open ? (message = "Open") : (message = "Close")
message
message = ""
message = open ? "Open" : "Close"

// Task 3
var var1 = 3
var var2 = 4
var var3 = 5
var tmp : Int
if var1 >= var2 && var1 >= var3 {
    tmp = var1
} else if var2 >= var1 && var2 >= var3 {
    tmp = var2
} else {
    tmp = var3
}

// Task 4
var cort1 = (-100, 1)
var cort2 = (10, 2)
var cort3 = (6, 12)

let line1 = sqrt(pow(Double(cort2.0 - cort1.0), 2) + pow(Double(cort2.1 - cort1.1), 2))
let line2 = sqrt(pow(Double(cort3.0 - cort1.0), 2) + pow(Double(cort3.1 - cort1.1), 2))
let line3 = sqrt(pow(Double(cort2.0 - cort3.0), 2) + pow(Double(cort2.1 - cort3.1), 2))

if line1 + line2 > line3 {
    print("Такой треугольник существует")
} else {
    print("Такой треугольник не существует")
}

// Task 5
//var lang = "en"
//var days : [String] = []
//switch lang {
//case "ru":
//    days = ["Понедельник", "Вторник", "Среда", "Четверг", "Пятница", "Суббота", "Воскресенье"]
//case "en":
//    days = ["Monday","Thuesday", "Wendsday", "Thusday", "Friday", "Saturday", "Sunday"]
//default:
//    break
//}

// Task 6
var lang = "en"
var chars = "down"
var days : [String] = []
switch lang {
case "ru" where chars == "down":
    days = ["Понедельник", "Вторник", "Среда", "Четверг", "Пятница", "Суббота", "Воскресенье"]
case "ru" where chars == "up":
    days = ["ПОНЕДЕЛЬНИК", "ВТОРНИК", "СРЕДА", "ЧЕТВЕРГ", "ПЯТНИЦА", "СУББОТА", "ВОСКРЕСЕНЬЕ"]
case "en" where chars == "down":
    days = ["Monday","Thuesday", "Wendsday", "Thusday", "Friday", "Saturday", "Sunday"]
case "en" where chars == "up":
    days = ["MONDAY","THUESDAY", "WENDSDAY", "THUSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
default:
    break
}
days

// Task 7
typealias Operation = (operandOne : Double, operandTwo : Double, operation : Character)
var oper : Operation = (3.1, 33, "+")
var result : Double = 0
switch oper {
case (_, _, "+"):
    result = oper.operandOne + oper.operandTwo
case (_, _, "-"):
    result = oper.operandOne - oper.operandTwo
case (_, _, "*"):
    result = oper.operandOne * oper.operandTwo
case (_, _, "/"):
    result = oper.operandOne / oper.operandTwo
default:
    break
}
result
