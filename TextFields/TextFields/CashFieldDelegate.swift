//
//  CashFieldDelegate.swift
//  TextFields
//
//  Created by Lee Tang on 6/25/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class CashFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        // Determine what the new text will be
        var newText: NSString = textField.text
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        if var currencyString = formatCurrency(newText) {
            textField.text = currencyString
            return false
        }
        
        return true
    }
    
    func formatCurrency(string: NSString) -> String? {
        
       // Remove the $ , . from the string
        var newText = string.stringByReplacingOccurrencesOfString(".", withString: "")
        newText = newText.stringByReplacingOccurrencesOfString("$", withString: "")
        newText = newText.stringByReplacingOccurrencesOfString(",", withString: "")
        //var newText = string
        // Format the string in currency format
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        formatter.locale = NSLocale(localeIdentifier: "en_US")
        
        var numberFromField = (NSString(string: newText).doubleValue)/100
        return formatter.stringFromNumber(numberFromField)
        
    }
}
