//
//  Item.swift
//  SoloLearnSwiftApp
//
//  Created by Arsenijus Zubkovas on 2023-03-21.
//

import Foundation

class Item: NSObject, NSCoding {
    static let Dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    static let ArchiveURL = Dir.appendingPathComponent("items")
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
    }
    
    required convenience init?(coder: NSCoder) {
        let name = coder.decodeObject(forKey: "name") as! String
        self.init(name: name)
    }
    
   var name: String

   init(name: String) {
     self.name = name
       super.init()
   }
}
