//
//  CellDetailViewController.swift
//  MyTableUI
//
//  Created by Enkhtsetseg Unurbayar on 11/12/24.
//

import UIKit

class CellDetailViewController: UIViewController {
    
    @IBOutlet weak var CellDetailLabelId: UILabel!
    @IBOutlet var cellDetail: UIView!
    
    @IBOutlet weak var cellImageDetail: UIImageView!
    var cellDetailImage: UIImageView? = nil
    
    var cellDetailLabel: String?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Update the label with the passed data (if available)
        if let detailLabel = cellDetailLabel {
            CellDetailLabelId.text = detailLabel
        }
        
    }
    



}



