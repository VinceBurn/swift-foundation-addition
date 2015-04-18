//
//  WeakWrapper.swift
//  Swift-Foundation-Addition
//
//  Created by Vincent Bernier on 18-04-2015.
//  Copyright (c) 2015 Vincent Bernier. All rights reserved.
//

import Foundation
import Swift

/** Goal : To be able to have an array of 'weak' items.
@discussion Use this class to implement mechanism like target/action or observers, where retain cycle are likely to occure. */
final public class WeakWrapper<T:AnyObject> {
    
    weak private(set) var item : T?
    /** Designited init */
    public init(item: T) {
        self.item = item
    }
}
