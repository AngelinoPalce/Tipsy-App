//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Angelino Palce on 8/15/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    var total = "0.0"
    var splitter = "0.0"
    var tipHandle : Float = 0.0
    
    override func viewDidLoad() {
    
        super.viewDidLoad()

        totalLabel.text = total
        settingsLabel.text = "Split between \(splitter) people, \(String(format: "%.0f", tipHandle))% tip."
    }
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
