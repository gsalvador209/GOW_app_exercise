//
//  LabelExtensions.swift
//  GOW
//
//  Created by Salvador Chavez on 3/8/25.
//

import UIKit

extension UILabel{
    
    func setCustomFont(fontName: String, size: CGFloat, textStyle : UIFont.TextStyle, textColor: UIColor?) {
        guard let customFont = UIFont(name: fontName, size: size) else {
            self.font = UIFont.systemFont(ofSize: size)
            self.textColor = UIColor.white
            return
        }
        self.font = customFont
        self.textColor = textColor
        
        if #available(iOS 11.0, *){
            let fontMetrics = UIFontMetrics(forTextStyle: textStyle)
            self.font = fontMetrics.scaledFont(for: customFont)
            self.adjustsFontForContentSizeCategory = true
        }
        
    }
}


