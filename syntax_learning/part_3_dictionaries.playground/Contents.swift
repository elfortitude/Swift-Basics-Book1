import UIKit

// Task 2
var dictOne : Dictionary<String, Character>
type(of: dictOne)
var dictTwo = Dictionary<String, Character>()
type(of: dictTwo)
var dictThree = ["Str1" : Character("a")]
type(of: dictThree)
var dictFour : Dictionary<String, Character> = Dictionary(dictionaryLiteral: ("Str1", "a"), ("Str2", "b"))
type(of: dictFour)
var dictFive = Dictionary(dictionaryLiteral: ("Str1", Character("a")), ("Str2", Character("b")))
type(of: dictFive)

// Task 4
let dict1 : Dictionary<Int, String> = [1 : "One", 2 : "Three", 3 : "Five"]
let set1 : Set<Int> = Set(dict1.keys)
let array1 : Array<String> = Array(dict1.values)

// Task 5
let dict2 : Dictionary<Int, Array<String>> = [1 : ["One", "Two"], 2 : ["Three", "Four"], 3 : ["Five", "Six"]]
type(of: dict2)
let dictElCount = dict2.count
let array2 = Array(repeating: dictElCount, count: dictElCount)
type(of: array2)
