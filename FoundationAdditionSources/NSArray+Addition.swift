//
//  NSArray+Addition.swift
//  Swift-Foundation-Addition
//
//  Created by Vincent Bernier on 22-03-2015.
//  Copyright (c) 2015 Vincent Bernier. All rights reserved.
//

import Foundation

public extension NSArray {
    func randomObject() -> AnyObject? {
        var result:AnyObject? = nil;
        if (count > 0) {
            let random:Int = Int(arc4random_uniform(UInt32(count)))
            result = self[random]
        }
        return result;
    }
}

