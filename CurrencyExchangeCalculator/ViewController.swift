//
//  ViewController.swift
//  CurrencyExchangeCalculator
//
//  Created by Sarin Swift on 10/26/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputCardView: UIView!
    @IBOutlet weak var usdTextField: usdAmountTextField!
    
    @IBOutlet weak var outputCardView: UIView!
    @IBOutlet weak var thbTitleLabel: UILabel!
    @IBOutlet weak var thbAmountLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func resetButtonTapped(_ sender: UIButton) {
        print("button tapped!!!")
    }
    
}

