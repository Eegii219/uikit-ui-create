//
//  ViewController.swift
//  LoginPage
//
//  Created by Enkhtsetseg Unurbayar on 11/12/24.
//

/*
 MVC
 model view controller
 moedel => data => json file, model ,
 view => table, story board,
 controllr => belowe between view and data!
 
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    //navication code to jump page logged in
    @IBAction func logInBtnTapped(_ sender: Any) {
        let loggedInVC = storyboard?.instantiateViewController(identifier: "LoggedInViewController") as! LoggedInViewController
        self.navigationController?.pushViewController(loggedInVC, animated: true)
    }
    
    @IBAction func showUsersTapped(_ sender: Any) {
        
        let loggedInVC = storyboard?.instantiateViewController(identifier: "UserViewController") as! UserViewController
        self.navigationController?.pushViewController(loggedInVC, animated: true)   
    }
    
    
    
}


