import UIKit

let newAlphabetArray = Array(arrayLiteral: "a", "b", "c")
newAlphabetArray
var rangeArray = Array(1...10)
var repeatArray = Array(repeating: "Ура!", count: 3)
var someArray = [1, 2, 3]
someArray == [1, 2, 3]

// Task 2
var array1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var array2 = Array(arrayLiteral: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
var array3 = Array(0...10)

// Task 3
var array4 = Array(repeating: 5, count: 3)
var array5 = Array(arrayLiteral: 5, 5, 5)
var array6 = [5, 5, 5]

// Task 4
var array7 = [1, 2, 3, 4]
array7.remove(at: 1)
array7[1] = array7[0] + array7[array7.count - 1]
array7
array7.sort()

// Task 5
var array8 = Array(1...100)
var emptyArray : Array<Int> = []
emptyArray = Array(array8[24...49])

// Task 6
var array9 : [Character] = ["a", "b", "c", "d", "e"]
array9.insert("z", at: 1)
var i = UInt8(array9.count)

// Task 7
array9[array9.count - 2]


