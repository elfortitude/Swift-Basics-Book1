import UIKit

class MyClass {
    var description : String
    init(description : String) {
        print("Экземпляр \(description) создан")
        self.description = description
    }
    deinit {
        print("Экземпляр \(self.description) уничтожен")
    }
}

var myVar1 = MyClass(description: "ОДИН")
var myVar2 = myVar1
myVar1 = MyClass(description: "ДВА")
myVar2 = myVar1

class Human {
    let name : String
    var child = [Human?]()
    weak var father : Human?
    weak var mother : Human?
    init(name : String) {
        self.name = name
    }
    deinit {
        print("\(self.name) - удален")
    }
}

var Kirill : Human? = Human(name: "Кирилл")
var Olga : Human? = Human(name: "Ольга")
var Aleks : Human? = Human(name: "Алексей")
Kirill?.father = Aleks
Kirill?.mother = Olga
Aleks?.child.append(Kirill)
Olga?.child.append(Kirill)
Kirill = nil
Aleks = nil
Olga = nil

class Human2 {
    var name = "Человек"
    deinit {
        print("Объект удален")
    }
}

var closure : (() -> ())?
if true {
    var human = Human2()
    closure = {
        [unowned human] in
        print(human.name)
    }
    closure!()
}
print("Программа завершена")
