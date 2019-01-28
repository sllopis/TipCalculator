//
//  ViewController.swift
//  TipCalculator
//
//  Created by Sergio Llopis on 1/21/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipC: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    
        billField.becomeFirstResponder()
    }
    
    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let defaultTip = defaults.integer(forKey: "default_tip")
        self.tipC.selectedSegmentIndex = defaultTip
        calculateTip(self)
    }
    
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.1,0.18, 0.2]
        
        let tip = bill * tipPercentages[tipC.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        //"$\(total)"
    }
    
}

