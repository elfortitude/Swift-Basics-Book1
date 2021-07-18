import UIKit

// Task 1
func firstFunc(funcVar : Bool) -> String {
    return String(funcVar)
}

// Task 2
func secondFunc(arrayInt : [Int]) -> Int {
    var sum = 0
    for number in arrayInt where number > 0 {
        sum += number
    }
    return sum
}
print(secondFunc(arrayInt: [1, -2, 3, 4, -5]))

// Task 3
func thirdFunc(arrayInt: [Int]) -> Int {
    if arrayInt.count == 0 {
        return 0
    } else {
        var proizvedenie = 1
        for number in arrayInt {
            proizvedenie *= number
        }
        return proizvedenie
    }
}
print(thirdFunc(arrayInt: [1, 2, 3, 4]))

// Task 4
func fourthFunc(_ a : Int, _ b : Int) -> Int {
    a * b
}

func fourthFunc(_ a : Double, _ b : Double) -> Double {
    a * b
}
print(fourthFunc(4, 5))
print(fourthFunc(4.1, 5.2))

// Task 5
func fifthFunc(_ num : Int) -> Int {
    return num * -1
}
print(fifthFunc(-12))
print(fifthFunc(32))

// Task 6
func sixthFunc(days : Int) -> Int {
    let oneDay = 850
    var sum = oneDay * days
    if days >= 7 {
        sum -= 1620
    } else if days >= 3 {
        sum -= 550
    }
    return sum
}
print(sixthFunc(days: 5))
print(sixthFunc(days: 9))

// Task 7
// var 1
func seventhFunc(arrayInt : [Int], num : Int) -> Bool {
    return arrayInt.contains(num)
}
// var 2
//func seventhFunc(arrayInt : [Int], num : Int) -> Bool {
//    if arrayInt.contains(num) {
//        return true
//    }
//    return false
//}
print(seventhFunc(arrayInt: [1, 2, 3], num: 4))
print(seventhFunc(arrayInt: [2, 3, 4], num: 3))

// Task 8
func eighthFunc(str : String, num : Int) -> String {
    var res = ""
    for _ in 0..<num {
        res += str
    }
    return res
}
print(eighthFunc(str: "Swift", num: 2))
print(eighthFunc(str: "Xcode", num: 0))

// Task 9
func ninethFunc(h : Float, N : Int, M : Int, L : Float) -> Int {
    var currentFloor = L * Float(N)
    var count = 1
    while currentFloor >= Float(M) {
        currentFloor *= L
        count += 2
    }
    return count
}
print(ninethFunc(h: 10, N: 2, M: 1, L: 0.75))
