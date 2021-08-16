//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumber: UILabel!
    
    var splitNumberValue : Float =  0.0
    var tip : Float = 0.0
    
    var totalBill : Float = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true

        let str = sender.currentTitle!
        let number = Float(str.dropLast())
        
        tip = number! / 100
        
    
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberValue = Float(sender.value)
        splitNumber.text = String(format: "%.0f ",splitNumberValue)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billvalue = Float(billTextField.text!) ?? 0.0
        
        totalBill = (billvalue * (1 + tip)) / splitNumberValue

        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let resultVC = segue.destination as! ResultsViewController
            resultVC.total = String(format: "%.2f", totalBill)
            resultVC.tipHandle = tip * 100
        resultVC.splitter = String(format: "%.0f", splitNumberValue)
        }
    }
}

