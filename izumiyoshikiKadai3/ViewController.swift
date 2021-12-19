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
    @IBOutlet weak private var operatorSwitch001: UISwitch!
    @IBOutlet weak private var operatorSwitch002: UISwitch!
    @IBAction private func calcButtonTapped(_ sender: Any) {
        guard let textField1 = textField1.text, let number1 = Int(textField1) else {
            return
        }
        guard let textField2 = textField2.text, let number2 = Int(textField2) else {
            return
        }
        let operatedNumber1: Int = operatorSwitch001.isOn ? -number1 : number1
        let operatedNumber2: Int = operatorSwitch002.isOn ? -number2 : number2
        number1Label.text = String(operatedNumber1)
        number2Label.text = String(operatedNumber2)
        resultLabel.text = String(operatedNumber1 + operatedNumber2)
    }
}
