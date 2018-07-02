//
//  ViewController.swift
//  window-shopper
//
//  Created by Kuba Żeligowski on 02.07.2018.
//  Copyright © 2018 huncfut. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 64))
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        timeLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate() {
        if let priceStr = priceTxt.text, let wageStr = wageTxt.text {
            if let price = Double(priceStr), let wage = Double(wageStr) {
                view.endEditing(true)
                timeLbl.text = "\(calcHours(price: price, wage: wage))"
                timeLbl.isHidden = false
                hoursLbl.isHidden = false
            }
        }
        
    }

    @IBAction func clearCalc(_ sender: Any) {
        wageTxt.text = ""
        priceTxt.text = ""
        timeLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
}

