//
//  Util.swift
//  environment
//
//  Created by Christian Quicano on 7/24/17.
//  Copyright © 2017 Academia moviles. All rights reserved.
//

import Foundation

let kNameFileConfiguration = "Configuration"
let kEnvironment = "environment"

class Util
{
    class func currentEnvironment() -> String?
    {
        if let path = Bundle.main.path(forResource: kNameFileConfiguration, ofType: "plist") {
            let url = URL(fileURLWithPath: path)
            if let data = try? Data(contentsOf: url) {
                if let dictionary = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [String:String] {
                    return dictionary?[kEnvironment]
                }
            }
        }
        return nil
    }
    
}
