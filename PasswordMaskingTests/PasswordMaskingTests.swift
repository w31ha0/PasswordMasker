//
//  PasswordMaskingTests.swift
//  PasswordMaskingTests
//
//  Created by Lew, Wei Hao on 27/07/16.
//  Copyright © 2016 Lew, Wei Hao. All rights reserved.
//

import XCTest
import Quick
import Nimble
import PasswordMasking


class PasswordMaskingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let textfield = UITextField(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        textfield.maskInput()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
