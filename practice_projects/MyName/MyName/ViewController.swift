//
//  ViewController.swift
//  MyName
//
//  Created by Елизавета Усачева on 19.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func changeLabelText(_ sender: UIButton) {
//      Меняем текст метки, используя текст нажатой кнопки
        label.text = "The \(sender.titleLabel!.text!.lowercased()) button was pressed."
    }
    
    @IBAction func showMessage() {
//      Создание контроллера всплывающего окна
        let alertController = UIAlertController(title: "Welcome to MyName App", message: "Elizaveta Usacheva", preferredStyle: .alert)
//      Добавление кнопок к всплывающему окну
        alertController.addAction(UIAlertAction(title: "First", style: .default, handler: nil))
        alertController.addAction(UIAlertAction(title: "Second", style: .default, handler: nil))
//      Вывод всплывающего окна
        self.present(alertController, animated: true, completion: nil)
    }
}

