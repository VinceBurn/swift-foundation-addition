//
//  Array+Addition_test.swift
//  Swift-Foundation-Addition
//
//  Created by Vincent Bernier on 23-03-2015.
//  Copyright (c) 2015 Vincent Bernier. All rights reserved.
//

import Foundation
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

    //MARK:- randomObject
    // Goal is to be able to exchange implementation from first class function to stuct method
    func anyObjectWrapperMethed<T>(anArray:Array<T>) -> T? {
        return randomObjectInArray(anArray)
    }
    
    func test_anyObject_returnNil_whenEmpty() {
        XCTAssertNil(anyObjectWrapperMethed([]), "Empty array return nil")
    }
    
    func test_anyObject_returnThe_onlyPresentObject() {
        let controlValue = 1
        let ar = [ controlValue ]
        XCTAssertTrue(anyObjectWrapperMethed(ar)! == controlValue, "1 item array return that 1 element")
    }
    
    func test_anyObject_with2Item_eventuallyReturnDifferentItems() {
        let ar = [1, 2]
        var result = false
        if let firstDraft = anyObjectWrapperMethed(ar) {
            for i in 1...100 {
                if let x = anyObjectWrapperMethed(ar) {
                    result = x != firstDraft
                    if result {
                        break;
                    }
                }
            }
        }
        XCTAssertTrue(result, "There is some form of randomization")
    }
    
    //MARK:- Find
    func test_find_emptyArray_return_nil() {
        let ar = Array<Int>()
        XCTAssertTrue(findIndexOfObjectInArray(ar) {$0 == 3} == nil, "Empty array will always find nothing")
    }
    
    func test_find_firstItem_in2ItemArray() {
        let ar = [3, 2]
        XCTAssertTrue(findIndexOfObjectInArray(ar) {$0 == 3} == 0, "First index is return when test is true for first")
    }
    
    func test_find_lastItem_in2ItemArray() {
        let ar = [2, 3]
        XCTAssertTrue(findIndexOfObjectInArray(ar) {$0 == 3} == 1, "Last index is return when test is true for last")
    }
    
    func test_find_firstOccuranceOfItemInArray() {
        let ar = [2, 3, 3, 3, 3, 3, 3]
        XCTAssertTrue(findIndexOfObjectInArray(ar) {$0 == 3} == 1, "Index of First occurent of a passing test is return")
    }

}
