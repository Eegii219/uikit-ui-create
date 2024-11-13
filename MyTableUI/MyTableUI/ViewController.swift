//
//  ViewController.swift
//  MyTableUI
//
//  Created by Enkhtsetseg Unurbayar on 11/11/24.
//

import UIKit

class ViewController: UIViewController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    
    //navigation contorller code that direct which view to jump
    @IBAction func mainViewTableViewBtnTapped(_ sender: Any) {
        
        // Instantiate the view controller => jump to TableViewController
               let tableViewController = self.storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
               
               // Present it modally
        self.navigationController?.pushViewController(tableViewController, animated: true)
    }
    


}

