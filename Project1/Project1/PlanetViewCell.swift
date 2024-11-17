//
//  PlanetViewCell.swift
//  Project1
//
//  Created by Enkhtsetseg Unurbayar on 11/15/24.
//

import UIKit

class PlanetViewCell: UITableViewCell {
    
    var climate: String?
    
   
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
