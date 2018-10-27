//
//  usdAmountTextField.swift
//  CurrencyExchangeCalculator
//
//  Created by Sarin Swift on 10/27/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import UIKit


class usdAmountTextField: UITextField {
    
//    var buttonTapAction: (() -> Void)?
    
    var calculateButtonAction: (() -> Void)?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let toolbar: UIToolbar = UIToolbar()
        
        let leadingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let trailingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let calculateButton = UIBarButtonItem(title: "Calculate Currency", style: .done, target: self, action: #selector(calculateButtonTapped))
        toolbar.items = [leadingFlex, calculateButton, trailingFlex]
        
        toolbar.sizeToFit()
        
        self.inputAccessoryView = toolbar
    }
    
//    @objc private func doneButtonTapped(_ sender: UIBarButtonItem) {
//        buttonTapAction?()
//    }
    
    @objc private func calculateButtonTapped(_ sender: UIBarButtonItem) {
        calculateButtonAction?()
    }
}
