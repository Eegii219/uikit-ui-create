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
    
    
    @IBAction func mainViewTableViewBtnTapped(_ sender: Any) {
        
        // Instantiate the view controller
               let tableViewController = self.storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
               
               // Present it modally
               self.present(tableViewController, animated: true, completion: nil)
    }
    
    @IBAction func showTableViewScreen(_ sender: Any ) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let tableViewController = storyboard.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
//        self.present(tableViewController, animated: true, completion: nil)
        self.navigationController?.pushViewController(tableViewController, animated: true)  
    }

}

