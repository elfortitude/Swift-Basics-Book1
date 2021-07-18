//
//  main.swift
//  UnknownNumber
//
//  Created by Елизавета Усачева on 18.07.2021.
//

import Foundation

//      Generation random number
let randomNumber = String(arc4random_uniform(50))
print("Компьютер случайным образом загадал число. Вам требуется отгадать его.")

//      Number from console
var userNumber = ""

repeat {
    print("Введите Ваш вариант и нажмите Enter")
    let myNumber = readLine()
    userNumber = myNumber ?? ""
    if randomNumber > userNumber {
        print("Ваш вариант меньше загаданного числа.")
    } else {
        print("Ваш вариант больше загаданного числа.")
    }
} while randomNumber != userNumber
print("Вы угадали!")
