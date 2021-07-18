import UIKit

// Task 1
func sumOfArray(_ array : [Int]) -> Int {
    return array.filter{ $0 > 0 }.reduce(0, +)
}
print(sumOfArray([1, -2, 3, 4, -5]))

// Task 2
func squareFunc(_ array : [Int]) -> [Int] {
    return array.map{ $0 * $0 }
}
print(squareFunc([1, 2, 3, 4]))

// Task 3
func multArray(_ array : [Int]) -> Int {
    var res = 0
    if array.count > 0 {
        res = array.reduce(1, *)
    }
    return res
}
print(multArray([1, 2, 3, 4]))

// Task 4
func evenElemsFunc(_ array : [Int]) -> [Int] {
    return array.filter{ $0 % 2 == 0 }
}

let arr = [1, 4, 5, 1, 2, 4, 6, 3, 12, 3]

print(evenElemsFunc(arr))
