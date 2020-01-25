//
//  ViewController.swift
//  tiptiphooray
//
//  Created by Maya W on 1/24/20.
//  Copyright © 2020 Maya W. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var TipLabel: UILabel!
    @IBOutlet var TotalLabel: UILabel!
    @IBOutlet var BillField: UITextField!
    
    @IBOutlet var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    print("hello")
        view.endEditing(true)
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        // get the bill
        let bill = Double(BillField.text!) ?? 0
        
        // calculate tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update the tip and total
        TipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)

    }
}

