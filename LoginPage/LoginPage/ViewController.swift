//
//  ViewController.swift
//  LoginPage
//
//  Created by Enkhtsetseg Unurbayar on 11/12/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    //navication code to jump page logged in
    @IBAction func logInBtnTapped(_ sender: Any) {
        let loggedInVC = storyboard?.instantiateViewController(identifier: "LoggedInViewController") as! LoggedInViewController
    }
    
    @IBAction func showUsersTapped(_ sender: Any) {
        
        let loggedInVC = storyboard?.instantiateViewController(identifier: "UserViewController") as! UserViewController
    }
    
    
    
}


