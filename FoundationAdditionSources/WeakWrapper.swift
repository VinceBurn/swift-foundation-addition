//
//  WeakWrapper.swift
//  Swift-Foundation-Addition
//
//  Created by Vincent Bernier on 18-04-2015.
//  Copyright (c) 2015 Vincent Bernier. All rights reserved.
//

import Foundation
import Swift

public class WeakWrapper {
    
    weak var string : NSString?
    public init(string: NSString) {
        self.string = string
    }
}
