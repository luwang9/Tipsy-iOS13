//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var numPeople = 2
    var totalNumber = 0.0
    var tipNum = 0.1
    var result = "0.0"
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true)
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        numPeople = Int(sender.value)
        
    }
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        sender.isSelected = true
        tipNum = Double(sender.currentTitle!.dropLast())!/100
    }
    
    
    @IBAction func calculatedPressed(_ sender: UIButton) {
        let bill = billTextField.text!
        if bill != "" {
            totalNumber = Double(bill)!
            let temp = totalNumber * (1 + tipNum) / Double(numPeople)
            result = String(format: "%.2f", temp)
        }
        self.performSegue(withIdentifier: "goToNext", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNext" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.people = numPeople
            destinationVC.value = result
            destinationVC.tip = Int(tipNum * 100)

        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    
}

