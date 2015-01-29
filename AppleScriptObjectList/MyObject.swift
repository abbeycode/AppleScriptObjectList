//
//  MyObject.swift
//  AppleScriptObjectList
//
//  Created by Dov Frankel on 1/29/15.
//  Copyright (c) 2015 Abbey Code. All rights reserved.
//

import Cocoa

var nextUniqueID = 0


class MyObject: NSObject {

    let permanentID = ++nextUniqueID
    
    func displayName() -> String {
        return "Name \(permanentID)"
    }
    
    func objectSpecifier() -> NSScriptObjectSpecifier {
        let appDesc = CustomApplication.classDescription() as NSScriptClassDescription
        
        return NSUniqueIDSpecifier(containerClassDescription: appDesc,
            containerSpecifier: nil,
            key: "myobject",
            uniqueID: permanentID)
    }
    
    func isSelected() -> Bool {
        return permanentID % 2 == 0
    }
}
