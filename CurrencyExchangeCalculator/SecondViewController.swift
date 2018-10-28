//
//  SecondViewController.swift
//  CurrencyExchangeCalculator
//
//  Created by Sarin Swift on 10/27/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var inputCardView: UIView!
    @IBOutlet weak var thbTextField: usdAmountTextField!
    
    @IBOutlet weak var outputCardView: UIView!
    @IBOutlet weak var usdTitleLabel: UILabel!
    @IBOutlet weak var usdAmountLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBAction func backButton() {
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thbTextField.calculateButtonAction = {
            self.calculate()
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        self.clear()
    }
    
    
    func calculate() {
        
        if self.thbTextField.isFirstResponder {
            self.thbTextField.resignFirstResponder()
        }
        
        guard let thbText = self.thbTextField.text, let thbAmount = Double(thbText) else {
            clear()
            return
        }
        
        let roundedThbAmount = (100 * thbAmount).rounded() / 100
        let usdAmount = roundedThbAmount / 33
        let roundedUsdAmount = (100 * usdAmount).rounded() / 100
        
        self.thbTextField.text = String(format: "%.2f", roundedThbAmount)
        self.usdAmountLabel.text = String(format: "%.2f", roundedUsdAmount)
        
    }
    
    func clear() {
        self.thbTextField.text = nil
        self.usdAmountLabel.text = "$0.00"
    }
    
    
}
