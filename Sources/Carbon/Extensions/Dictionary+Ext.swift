//
//  Dictionary+Ext.swift
//  Carbon
//
//  Created by Kuba on 5/14/25.
//

import Foundation

extension Dictionary where Key == String {

    mutating func first(upTo maxItems: Int) {
        var counter: Int = 0
        for (key, _) in self {
            if counter >= maxItems {
                removeValue(forKey: key)
            } else {
                counter += 1
            }
        }
    }
    
    func toStringDictionary() -> [String: String] {
        var stringDictionary: [String: String] = [:]
        for (key, value) in self {
            if let stringValue = value as? String {
                stringDictionary[key] = stringValue
            } else if let intValue = value as? Int {
                stringDictionary[key] = String(intValue)
            } else if let doubleValue = value as? Double {
                stringDictionary[key] = String(doubleValue)
            } else if let boolValue = value as? Bool {
                stringDictionary[key] = String(boolValue)
            } else {
                stringDictionary[key] = "\(value)"
            }
        }
        
        return stringDictionary
    }
}
