//
//  MaskingSwitch.swift
//  PasswordMaskingTest
//
//  Created by Lew, Wei Hao on 28/07/16.
//  Copyright © 2016 Lew, Wei Hao. All rights reserved.
//

import Foundation
import UIKit

public class MaskingSwitch : UISwitch{
    
    override init(frame:CGRect){
        super.init(frame: frame)
        self.addTarget(self, action: #selector(MaskingSwitch.switchValueDidChange(_:)), forControlEvents: .ValueChanged);
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func switchValueDidChange(sender:UISwitch!)
    {
        if (sender.on == true){
            Singleton.sharedInstance.maskedStatus=true;
            print("onnnnn")
        }
        else{
            Singleton.sharedInstance.maskedStatus=false;
            print("offffff")
        }
        Singleton.sharedInstance.updateTextFields()
    }
    
}