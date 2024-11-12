//
//  TableViewCell.swift
//  MyTableUI
//
//  Created by Enkhtsetseg Unurbayar on 11/11/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelViewCell: UILabel!
    @IBOutlet weak var imageViewCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
