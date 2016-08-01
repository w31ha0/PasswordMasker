//
//  TapToggle.swift
//  PasswordMasking
//
//  Created by Lew, Wei Hao on 29/07/16.
//  Copyright © 2016 Lew, Wei Hao. All rights reserved.
//

import Foundation

public class TapToggle : NSObject {	

    public class func toggle(){
        Singleton.sharedInstance.toggleMasking()
    }
    
}