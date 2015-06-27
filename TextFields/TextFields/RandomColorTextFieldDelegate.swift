//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Lee Tang on 6/22/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    let colors = [UIColor.redColor(),UIColor.purpleColor(),UIColor.greenColor(),UIColor.grayColor(),UIColor.blueColor(),UIColor.brownColor(),UIColor.yellowColor(),UIColor.orangeColor(),UIColor.magentaColor(),UIColor.cyanColor()];
    
    func randomcolor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
            textField.textColor = self.randomcolor()
        return true
    }
}
