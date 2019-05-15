//
//  AddViewController.swift
//  ToDoApp
//
//  Created by 陰山賢太 on 2019/05/14.
//  Copyright © 2019 Kageken. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func pressedButton(_ sender: Any) {
        if textField.text != "" {
            let newItem = Item(initTitle: textField.text!)
            newItem.date = datePicker.date
            itemArray.append(newItem)
            textField.text = ""
            self.navigationController?.popViewController(animated: true)
        } else {
            let alert = UIAlertController(title: "入力エラー！", message: "アイテムを入力して下さい", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            present(alert, animated: true, completion: nil)
        }
    }
    
}
