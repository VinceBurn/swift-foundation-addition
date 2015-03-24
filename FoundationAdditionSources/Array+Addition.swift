//
//  Array_Addition.swift
//  Swift-Foundation-Addition
//
//  Created by Vincent Bernier on 23-03-2015.
//  Copyright (c) 2015 Vincent Bernier. All rights reserved.
//

import Foundation

internal extension Array {
    
    internal func anyObject() -> T? {
        var result:T? = first
        if count > 1 {
            let random:Int = Int(arc4random_uniform(UInt32(count)))
            result = self[random]
        }
        
        return result
    }
    
}


