//
//  WeakWrapper_test.swift
//  Swift-Foundation-Addition
//
//  Created by Vincent Bernier on 18-04-2015.
//  Copyright (c) 2015 Vincent Bernier. All rights reserved.
//

import Foundation
import XCTest

class WeakWrapper_test: XCTestCase {
    
    func test_initWithString_saveItsStr() {
        let str = NSString(string: "STR")
        let x = WeakWrapper(string: str)
        XCTAssertTrue(str == x.string, "")
    }
    
    func test_string_isWeak() {
        var wrap : WeakWrapper = WeakWrapper(string: NSString(string: ""))
        if (true) {
            let str = NSString(string: "STR")
            wrap = WeakWrapper(string: str)
        }
        
        XCTAssertTrue(wrap.string == nil, "")
    }

}
