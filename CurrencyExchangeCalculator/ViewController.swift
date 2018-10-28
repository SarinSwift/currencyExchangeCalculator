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
    
    @IBOutlet weak var pushToSecond: UIBarButtonItem!
    
    @IBAction func pushToSecondTapped(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "moveToSecond", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usdTextField.calculateButtonAction = {
            self.calculate()
        }
    }

    @IBAction func resetButtonTapped(_ sender: UIButton) {
        self.clear()
    }
    
    
    
    func calculate() {
        if self.usdTextField.isFirstResponder {
            self.usdTextField.resignFirstResponder()
        }
        
        guard let usdText = self.usdTextField.text,
            let usdAmount = Double(usdText) else {
                clear()
                return
        }
        
        let roundedUsdAmount = (100 * usdAmount).rounded() / 100
        
        let thbAmount = 33 * roundedUsdAmount
        let roundedThbAmount = (100 * thbAmount).rounded() / 100
        
        // updates UI
        self.usdTextField.text = String(format: "%.2f", roundedUsdAmount)
        self.thbAmountLabel.text = String(format: "%.2f", roundedThbAmount)
    }
    
    func clear() {
        self.usdTextField.text = nil
        self.thbAmountLabel.text = "0.00฿"
    }
    
    
    @IBAction func unwindToView(_ sender: UIStoryboardSegue) {
        
    }
    
}

