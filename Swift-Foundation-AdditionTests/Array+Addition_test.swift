//
//  Array+Addition_test.swift
//  Swift-Foundation-Addition
//
//  Created by Vincent Bernier on 23-03-2015.
//  Copyright (c) 2015 Vincent Bernier. All rights reserved.
//

import UIKit
import XCTest

class Array_Addition_test: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    //  MARK: - anyObject
    func test_anyObject_returnNil_whenEmpty() {
        let ar = []
        XCTAssertNil(ar.anyObject(), "Empty array return nil")
    }
    
    func test_anyObject_returnThe_onlyPresentObject() {
        let controlValue = 1
        let ar = [ controlValue ]
        XCTAssertTrue(ar.anyObject()? == controlValue, "1 item array return that 1 element")
    }
    
    func test_anyObject_with2Item_eventuallyReturnDifferentItems() {
        let ar = [1, 2]
        var result = false
        if let firstDraft = ar.anyObject() {
            for i in 1...100 {
                if let x = ar.anyObject() {
                    result = x != firstDraft
                    if result {
                        break;
                    }
                }
            }
        }
        XCTAssertTrue(result, "There is some form of randomization")
    }

}
