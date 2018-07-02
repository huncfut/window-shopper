//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Kuba Żeligowski on 02.07.2018.
//  Copyright © 2018 huncfut. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTxtField: UITextField {
    override func draw(_ rect: CGRect) {
        let size: CGFloat = frame.size.height - 10
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: 5, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7952535152, green: 0.7952535152, blue: 0.7952535152, alpha: 0.5)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.numberStyle = .currency
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let holder = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = holder
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
}
