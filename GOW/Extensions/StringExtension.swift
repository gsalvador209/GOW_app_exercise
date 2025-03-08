
//
//  StringExtension.swift
//  GOW
//
//  Created by Salvador Chavez on 3/8/25.
//

import Foundation

extension String {
    
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
    
    func localized(withComment: String) -> String{
        NSLocalizedString(self, comment: withComment)
    }
}
