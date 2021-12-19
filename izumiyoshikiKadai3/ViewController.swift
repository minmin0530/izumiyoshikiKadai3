//
//  ViewController.swift
//  izumiyoshikiKadai3
//
//  Created by 泉芳樹 on 2021/12/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var textField1: UITextField!
    @IBOutlet weak private var textField2: UITextField!
    @IBOutlet weak private var number1Label: UILabel!
    @IBOutlet weak private var number2Label: UILabel!
    @IBOutlet weak private var resultLabel: UILabel!
    @IBOutlet weak private var signSwitch1: UISwitch!
    @IBOutlet weak private var signSwitch2: UISwitch!

    @IBAction private func calcButtonTapped(_ sender: Any) {
        guard let textField1 = textField1.text, let number1 = Int(textField1) else {
            return
        }

        let signedNumber1 = (signSwitch1.isOn ? -1 : 1) * number1
        number1Label.text = String(signedNumber1)

        guard let textField2 = textField2.text, let number2 = Int(textField2) else {
            return
        }

        let signedNumber2 = (signSwitch2.isOn ? -1 : 1) * number2
        number2Label.text = String(signedNumber1)

        resultLabel.text = String(signedNumber1 + signedNumber2)
    }
}
