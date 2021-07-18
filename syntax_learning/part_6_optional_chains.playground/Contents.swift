import UIKit

struct Room {
    let square : Int
}

class Residence {
    var rooms : [Room]?
    func roomsCount() -> Int {
        if let rooms = self.rooms {
            return rooms.count
        } else {
            return 0
        }
    }
}

class Person {
    var residence : Residence?
}

var man = Person()
if let residence = man.residence {
    if let rooms = residence.rooms {
        for oneRoom in rooms {
            print("Есть комната площадью \(oneRoom.square)")
        }
    } else {
        print("Нет комнат")
    }
} else {
    print("Нет дома")
}

let room = Room(square: 10)
var residense = Residence()
residense.rooms = [room]
var man2 = Person()
man2.residence = residense
if let rooms = man2.residence?.rooms {
    for oneRoom in rooms {
        print("Есть комната площадью \(oneRoom.square)")
    }
} else {
    print("Нет дома или комнат")
}

let room1 = Room(square: 15)
let room2 = Room(square: 25)
man2.residence?.rooms = [room1, room2]

man.residence?.roomsCount()
