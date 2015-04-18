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
        let x = WeakWrapper<NSString>(item: str)
        XCTAssertTrue(str == x.item, "Item is readable back")
    }
    
    func test_string_isWeak() {
        var wrap : WeakWrapper = WeakWrapper<NSString>(item: NSString(string: ""))
        if (true) {
            let str = NSString(string: "STR")
            wrap = WeakWrapper<NSString>(item: str)
        }
        XCTAssertTrue(wrap.item == nil, "The item is weak, so it is nil when the object get out of scope")
    }
}
