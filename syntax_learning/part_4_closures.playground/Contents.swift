import UIKit

// Task 1
let closureOne = {
    print("Hello, World!")
}
closureOne()
type(of: closureOne)

// Task 3
let closureTwo : (String) -> () = {str in print(str)}
closureTwo("Hello")
type(of: closureTwo)

// Task 4
let closureThree = { (a : Int, b : Int) -> Int in
        return a + b
}
print(closureThree(7, 10))
print(closureThree(5, 8))
type(of: closureThree)

// Task 6
let closureFour : (Int, Int) -> Int = { $0 - $1 }

func funcWithClosure(a : Int, b : Int, closure : (Int, Int) -> Int) -> Int
{
    return closure(a, b)
}
funcWithClosure(a: 7, b: 3, closure: closureFour)
funcWithClosure(a: 2, b: 6, closure: *)

// Task 9
let arrayOfInt = [2, 55, 1, 2, 77, 24, 1, 2]
print(arrayOfInt.sorted(by: >))
