//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Lu Wang on 5/28/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var value = "0.0"
    var people = 2
    var tip = 10
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = value
        settingLabel.text = "Split between \(people) people, with \(tip)% tip."

        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */

}
