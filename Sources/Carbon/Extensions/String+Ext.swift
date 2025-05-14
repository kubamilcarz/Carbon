//
//  Swift+Ext.swift
//  Carbon
//
//  Created by Kuba on 5/14/25.
//

import Foundation

extension String {
    
    var stableHashValue: Int {
        let unicodeScalars = self.unicodeScalars.map { $0.value }
        return unicodeScalars.reduce(5381) { ($0 << 5) &+ $0 &+ Int($1) }
    }
    
    func clipped(maxCharacters: Int) -> String {
        String(prefix(maxCharacters))
    }
    
    func replaceSpacesWithUnderscores() -> String {
        self.replacingOccurrences(of: " ", with: "_")
    }
    
    func clean(maxCharacters: Int) -> String {
        self
            .clipped(maxCharacters: 40)
            .replaceSpacesWithUnderscores()
    }
}
