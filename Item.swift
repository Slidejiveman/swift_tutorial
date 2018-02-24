//
//  Item.swift
//  MyApp
//
//  Created by HumanD1ffM4chin3 on 2/22/18.
//  Copyright © 2018 HumanD1ffM4chin3. All rights reserved.
//

import Foundation

class Item: NSObject, NSCoding {
    var name:String?
    
    init(name:String?) {
        self.name = name
        super.init()
    }
    
    static let Dir = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = Dir.appendingPathComponent("items")
    
    func encode(with aCoder: NSCoder) {
        // in Swift 3 the .encodeObject() method is updated to encode(object: Any?)
        aCoder.encode(name, forKey: "name")
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObject(forKey: "name") as? String
    }
}
