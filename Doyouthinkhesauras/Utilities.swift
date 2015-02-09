//
//  Utilities.swift
//  Doyouthinkhesauras
//
//  Created by Max Beizer on 2/8/15.
//  Copyright (c) 2015 Max Beizer. All rights reserved.
//

import Foundation

func println<T>(object: T, _ file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__) {
    let filename = file.lastPathComponent.stringByDeletingPathExtension
    print("\(filename).\(function)[\(line)]: \(object)\n")
}