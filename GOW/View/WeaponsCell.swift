//
//  WeaponsCell.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class WeaponsCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        wName.setCustomFont(fontName: Constants.FONT_MENU_TITLE, size: Constants.FONT_SIZE_DEFAULT, textStyle: .headline)
    }

    @IBOutlet weak var wName: UILabel!
    
    @IBOutlet weak var wPoster: UIImageView!
    
    @IBOutlet weak var wDescription: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
