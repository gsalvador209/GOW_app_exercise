//
//  Character.swift
//  GOW
//
//  Created by Salvador Chavez on 3/15/25.
//

import UIKit

struct Character {
    let name: String
    let coalition: String
    let race: String
    let sex: String
    let firstAppearance: String
}

extension Character {
    var formattedDetails: String {
        return """
        Coalition: \(NSLocalizedString(coalition, comment: ""))
        Race: \(NSLocalizedString(race, comment: "")) | Sex: \(NSLocalizedString(sex, comment: ""))
        First Appearance: \(NSLocalizedString(firstAppearance, comment: ""))
        """
    }
}
