import UIKit

// Task 1
var str = "Swift"
let char : Character = "a"
var array1 : Array<String> = Array(repeating: String(char), count: str.count)
type(of: array1)
str = String(char)

// Task 2
let str2 = "JonhWick"
var index1 = str2.startIndex
print(str2[index1])
var index2 = str2.index(before: str2.endIndex)
print(str2[index2])
let const = str2[index1...str2.index(index1, offsetBy: 3)]
type(of: const)
print(const)

// Task 3
let chessWhite : Set<Character> = ["\u{2654}", "\u{2655}", "\u{2656}", "\u{2657}", "\u{2658}", "\u{2659}"]
let chessBlack : Set<Character> = ["\u{265A}", "\u{265B}", "\u{265C}", "\u{265D}", "\u{265E}", "\u{265F}", "\u{1F67E}", "\u{1F67F}"]
print(chessWhite)
print(chessBlack)

