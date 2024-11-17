//
//  ViewController.swift
//  Project1
//
//  Created by Enkhtsetseg Unurbayar on 11/15/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func goPlanetViewTapped(_ sender: Any) {
        
        let goPlanetBtn = storyboard?.instantiateViewController(withIdentifier: "PlanetViewController")
        self.navigationController?.pushViewController(goPlanetBtn!, animated: true)
    }
}

