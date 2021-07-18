import UIKit

func swapTwoInts (a : inout Int, b : inout Int) {
    let tmpA = a
    a = b
    b = tmpA
}

var firstInt = 4010
var secondInt = 13
swapTwoInts(a: &firstInt, b: &secondInt)
print(firstInt)
print(secondInt)

func swapTwoValues<T> (a : inout T, b : inout T) {
    let tmpA = a
    a = b
    b = tmpA
}
 var firstString = "one"
var secondString = "two"
swapTwoValues(a: &firstString, b: &secondString)
print(firstString)
print(secondString)

struct IntStack {
    var items = [Int]()
    mutating func push (_ item : Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

struct Stack<T> {
    var items = [T]()
    init(){}
    init(_ elements : T...) {
        self.items = elements
    }
    mutating func push(_ item : T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
let fromThePop = stackOfStrings.pop()

var stackOfInts = Stack(1, 2, 4, 5)
type(of: stackOfInts)
type(of: stackOfStrings)

func findIndex<T : Equatable> (array : [T], valueToFind : T) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

var myArray = [3.14159, 0.1, 0.25]
let firstIndex = findIndex(array: myArray, valueToFind: 0.1)
let secondIndex = findIndex(array: myArray, valueToFind: 31)

extension Stack {
    var topItem : T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

stackOfInts.topItem
stackOfInts.push(7)
stackOfInts.topItem

protocol Container {
    associatedtype ItemType
    mutating func append(item : ItemType)
    var count : Int { get }
    subscript(i : Int) -> ItemType { get }
}

struct Stack2<T> : Container {
    typealias ItemType = T
    var items = [T]()
    var count : Int {
        return items.count
    }
    init(){}
    init (_ elements : T...) {
        self.items = elements
    }
    subscript(i: Int) -> T {
        return items[i]
    }
    mutating func push (item : T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    mutating func append(item: T) {
        items.append(item)
    }
}
