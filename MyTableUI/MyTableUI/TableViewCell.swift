//
//  TableViewCell.swift
//  MyTableUI
//
//  Created by Enkhtsetseg Unurbayar on 11/11/24.
//

import UIKit

class TableViewCell: UITableViewCell {

   
    @IBOutlet weak var cellLabel: UILabel!
    
    @IBOutlet weak var cellImage: UIImageView!
   

    @IBOutlet weak var cellTapped: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func showCellDetails() {
        cellTapped.isHidden = false
        UIView.animate(withDuration: 0.1) {
            self.cellTapped.isHidden = true
        }
    }
}
