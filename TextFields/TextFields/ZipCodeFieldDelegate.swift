//
//  ZipCodeFieldDelegate.swift
//  TextFields
//
//  Created by Lee Tang on 6/23/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeFieldDelegate: NSObject, UITextFieldDelegate {
    
    //Limit text to 5 charac
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if let number = string.toInt() {
            //Entered number
            
            var ZipCode: NSString = textField.text
            ZipCode = ZipCode.stringByReplacingCharactersInRange(range, withString: string)
            
            //limit charac to 5
            return ZipCode.length <= 5
        } else {
            return string == ""
        }
        
    }
}