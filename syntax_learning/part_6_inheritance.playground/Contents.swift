import UIKit

class Quadruped {
    var type = ""
    var name = ""
    func walk () {
        print("walk")
    }
}

class Dog : Quadruped {
    override init() {
        super.init()
        self.type = "dog"
    }
    func bark() {
        print("woof")
    }
    func printName() {
        print(self.name)
    }
}

class NoisyDog : Dog {
    override func bark() {
        for _ in 1...3 {
            super.bark()
        }
    }
}

var badDog = NoisyDog()
badDog.bark()

var animalsArray : [Quadruped] = []
var someAnimal = Quadruped()
var myDog = Dog()
var sadDog = NoisyDog()
animalsArray.append(someAnimal)
animalsArray.append(myDog)
animalsArray.append(sadDog)

for item in animalsArray {
    if item is Dog {
        print("Yap")
    }
}

for item in animalsArray {
    if var animal = item as? NoisyDog {
        animal.bark()
    } else if var animal = item as? Dog {
        animal.bark()
    } else {
        item.walk()
    }
}
