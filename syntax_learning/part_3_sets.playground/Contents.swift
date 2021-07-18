import UIKit

// Task 1
var setOne = Set(1...10)
var setTwo = Set(5...15)
var setThree = setOne.intersection(setTwo)
var setFour = setOne.symmetricDifference(setTwo)
var countElems = UInt8(setFour.count)
