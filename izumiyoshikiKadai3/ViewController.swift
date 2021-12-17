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

    private var operator1: Int = 1
    private var operator2: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction private func operatorSwitch1(_ sender: Any) {
        operator1 *= -1
    }
    @IBAction private func operatorSwitch2(_ sender: Any) {
        operator2 *= -1
    }

    @IBAction private func calcButtonTapped(_ sender: Any) {
        guard let textField1 = textField1.text, let number1 = Int(textField1) else {
            return
        }
        let operatedNumber1: Int = operator1 * number1
        number1Label.text = operatedNumber1.description

        guard let textField2 = textField2.text, let number2 = Int(textField2) else {
            return
        }
        let operatedNumber2: Int = operator2 * number2
        number2Label.text = operatedNumber2.description

        resultLabel.text = (operatedNumber1 + operatedNumber2).description
    }
}
