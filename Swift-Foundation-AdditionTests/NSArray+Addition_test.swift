//
//  NSArray+Addition_test.swift
//  Swift-Foundation-Addition
//
//  Created by Vincent Bernier on 22-03-2015.
//  Copyright (c) 2015 Vincent Bernier. All rights reserved.
//

import Foundation
import XCTest

class NSArray_Addition_test: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //  MARK: - anyObject
    func test_anyObject_returnNil_WhenEmptyNSArray() {
        let emptyAr = NSArray()
        XCTAssertNil(emptyAr.anyObject(), "")
    }
    
    func test_anyObject_returnTheOneObjectInNSArray() {
        
        let controlObj = "objet"
        let nsArray = NSArray(object: controlObj)
        let result = (nsArray.anyObject() ?? "") as String
        XCTAssertEqual(result, controlObj, "Array with 1 elements always retrun that element")
    }
    
    func test_anyObject_returnEventuallyDifferentObject_when2ItemsInNSArray() {
        
        let nsArray = NSArray(objects: "1", "2")
        var firstAnyObject = nsArray.anyObject() as String
        var result = false
        for index in 1...100 {
            let x = nsArray.anyObject() as String
            result = firstAnyObject != x
            if result {
                break
            }
        }
        XCTAssertTrue(result, "anyObject have a form of randomization")
    }
}
