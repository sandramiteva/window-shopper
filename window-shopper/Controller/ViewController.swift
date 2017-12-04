//
//  ViewController.swift
//  window-shopper
//
//  Created by Sandra on 12/1/17.
//  Copyright © 2017 Sandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtFiels!
    @IBOutlet weak var itemPriceTxt: CurrencyTxtFiels!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5783185848, blue: 0.008888401303, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        itemPriceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calculate() {
        if let wageTxt = wageTxt.text, let itemPriceTxt = itemPriceTxt.text {
            if let wage = Double(wageTxt), let price = Double(itemPriceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }

    @IBAction func onClearCalculatorTapped(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        itemPriceTxt.text = ""
    }
    
}

