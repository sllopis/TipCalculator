//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Sergio Llopis on 1/28/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipC: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tipC.selectedSegmentIndex = UISegmentedControl.noSegment;
        // Do any additional setup after loading the view.
    }
    

    @IBAction func changeDefault(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(tipC.selectedSegmentIndex, forKey: "default_tip")
        defaults.synchronize()
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
