//
//  Array_Addition.swift
//  Swift-Foundation-Addition
//
//  Created by Vincent Bernier on 23-03-2015.
//  Copyright (c) 2015 Vincent Bernier. All rights reserved.
//

import Foundation


/** Return a random object from the Array
 @note Walk around while Generic collection don't support public extension  */
public func randomObjectInArray<T>(anArray:Array<T>) -> T? {
    return anArray.randomObject()
}

/** Find the first occurance of an object in an array.
 @discussion This method is intended to be use on array in which members don't conforms to the Equitable protocol.
 @note This method is a supplement for the global function 'find' that only works with Equitable items.
 @note Walk around while Generic collection don't support public extension */
public func findIndexOfObjecInArray<T>(ar: Array<T>, #test: (T) -> Bool) -> Int? {
    return ar.findIndexOfObjectPassingTest(test)
}

internal extension Array {
    
    internal func findIndexOfObjectPassingTest(test: (T) -> Bool) -> Int? {
        var index : Int? = nil
        for (idx, item) in enumerate(self) {
            if test(item) {
                index = idx
                break
            }
        }
        return index
    }
    
    internal func randomObject() -> T? {
        var result:T? = first
        if count > 1 {
            let random:Int = Int(arc4random_uniform(UInt32(count)))
            result = self[random]
        }
        
        return result
    }
}


