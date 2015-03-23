//
//  NSArray+Addition.swift
//  Swift-Foundation-Addition
//
//  Created by Vincent Bernier on 22-03-2015.
//  Copyright (c) 2015 Vincent Bernier. All rights reserved.
//

import Foundation

public extension NSArray {
    func anyObject() -> AnyObject? {
        var result:AnyObject? = nil;
        if (count > 0) {
            let count32:UInt32 = UInt32(count)
            let random:Int = Int(arc4random_uniform(count32))
            result = self[random]
        }
        return result;
    }
}

