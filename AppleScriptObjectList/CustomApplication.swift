//
//  CustomApplication.swift
//  AppleScriptObjectList
//
//  Created by Dov Frankel on 1/29/15.
//  Copyright (c) 2015 Abbey Code. All rights reserved.
//

import Cocoa

class CustomApplication: NSApplication {

    var allObjects = ([Int](1...5)).map {(var i) -> MyObject in MyObject()}
    
    func myObjects() -> [MyObject] {
        return allObjects
    }
    
    func selectedMyObjects() -> [MyObject] {
        return allObjects.filter {$0.isSelected()}
    }
    
}
