//
//  ViewController.swift
//  CurrencyConversion
//
//  Created by Isaac Annan on 10/09/2019.
//  Copyright © 2019 Isaac Annan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var infoView: UIView!
    
    @IBOutlet weak var usdTxtField: UITextField!
    @IBOutlet weak var otherCurTxtField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        containerView.addViewBorder(borderColor: #colorLiteral(red: 0.6, green: 0.6, blue: 0.6, alpha: 1), borderWith: 2, borderCornerRadius: 8)
        infoView.addViewBorder(borderColor: #colorLiteral(red: 0.6, green: 0.6, blue: 0.6, alpha: 1), borderWith: 2, borderCornerRadius: 10)
        otherCurTxtField.keyboardType = .numberPad
        usdTxtField.keyboardType = .numberPad
      
        usdTxtField.addTarget(self, action: #selector(self.textField1DidChange(_:)), for: .editingChanged)
        otherCurTxtField.addTarget(self, action: #selector(self.textField2DidChange(_:)), for: .editingChanged)
      
        
        }
     
        
       
        
    
    @objc func textField1DidChange(_ textfield: UITextField){
       let val1 = Double(usdTxtField.text!) ?? 0.0
       

        if usdTxtField.text != nil{
        self.otherCurTxtField.text = "\(round(1000 * (val1 * 3.95) / 1000))"
        }
        else{
            otherCurTxtField.text = ""
        }

        }
    
    @objc func textField2DidChange(_ textfield: UITextField) {
        let val2 = Double(otherCurTxtField.text!) ?? 0.0
        
        if  otherCurTxtField.text != nil{
            self.usdTxtField.text = "\(round(1000 * (val2 / 3.95) / 1000))"
        }
        else{
            usdTxtField.text = ""
        }
//
//        if let val1 = Double(usdTxtField.text!){
//            otherCurTxtField.text = "\(val1 * 3.95)"
//        }
//
//        if let val2 = Double(otherCurTxtField.text!){
//            usdTxtField.text = "\(val2 / 3.95)"
//        }
//
        
    }


}

extension UIView {
    public func addViewBorder(borderColor:CGColor,borderWith:CGFloat,borderCornerRadius:CGFloat){
        self.layer.borderWidth = borderWith
        self.layer.borderColor = borderColor
        self.layer.cornerRadius = borderCornerRadius
        
    }
}
