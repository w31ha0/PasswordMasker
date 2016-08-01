//
//  PasswordMasking.swift
//  PasswordMaskingTest
//
//  Created by Lew, Wei Hao on 28/07/16.
//  Copyright © 2016 Lew, Wei Hao. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    
    public func maskInput(mode: Int = 100){
        print("masking input for mode \(mode)")
        if !Singleton.sharedInstance.textFieldArray.contains(self){
            Singleton.sharedInstance.textFieldArray.append(self)
            Singleton.sharedInstance.colorsArray.append(self.textColor!)
            Singleton.sharedInstance.modeArray.append(MASKINGMODE.MANUAL)
        }
        
        let index = Singleton.sharedInstance.textFieldArray.indexOf(self)
        
        if ( mode == MASKINGMODE.AUTO || mode == MASKINGMODE.MANUAL) {
            Singleton.sharedInstance.modeArray[index!] = mode ;
        }
        
        let maskingMode = Singleton.sharedInstance.modeArray[index!]
        
        let transparentColor = UIColor(red: 1, green: 165/255, blue: 0, alpha: 0)
        let originalColor=Singleton.sharedInstance.colorsArray[index!]
        
        switch maskingMode {
            case MASKINGMODE.AUTO: //Auto mode
                let center = NSNotificationCenter.defaultCenter()
                center.addObserver(self, selector: #selector(maskInput), name: UIScreenDidConnectNotification, object: nil)
                center.addObserver(self, selector: #selector(maskInput), name: UIScreenDidDisconnectNotification, object: nil)
                if ( UIScreen.screens().count > 1){
                    print("External display detected")
                    self.textColor=transparentColor
                }else{
                    self.textColor=originalColor
                    print("No external display")
                }
                break;
            default: //manual mode
                let masked = Singleton.sharedInstance.maskedStatus
                if masked {
                    self.textColor=transparentColor
                }else{
                    self.textColor=originalColor
                }
                break;
        }
        
    }
    
    
}