//
//  Singleton.swift
//  PasswordMaskingTest
//
//  Created by Lew, Wei Hao on 28/07/16.
//  Copyright © 2016 Lew, Wei Hao. All rights reserved.
//

import Foundation
import UIKit

public class Singleton{
    
    var maskedStatus:Bool = false
    var textFieldArray:[UITextField] = []
    var colorsArray:[UIColor] = []
    var modeArray : [Int] = []
    var mode = 0 // 0 for manual , 1 for auto
    static let sharedInstance = Singleton()
    
    func updateTextFields(){
        for textfield in self.textFieldArray{
            textfield.maskInput()
        }
    }
    
    public func toggleMasking(){
        if self.maskedStatus{
            self.maskedStatus = false
        }else{
            self.maskedStatus = true
        }
        updateTextFields()
    }
    
}