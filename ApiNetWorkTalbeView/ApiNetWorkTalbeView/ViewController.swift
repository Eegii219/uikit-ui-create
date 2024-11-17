//
//  ViewController.swift
//  ApiNetWorkTalbeView
//
//  Created by Enkhtsetseg Unurbayar on 11/13/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showApiNetWork(_ sender: Any) {
        let api = storyboard?.instantiateViewController(identifier: "ApiTableViewController") as! ApiTableViewController; self.navigationController?.pushViewController(api, animated: true)
    }
    
}

