//
//  TableViewController.swift
//  MyTableUI
//
//  Created by Enkhtsetseg Unurbayar on 11/11/24.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var items = ["Sttings", "Profile", "Logout", "Help", "About"]
    var lists = ["Message", "Notification", "Settings"]
    var things = ["like", "dislike", "love", "favorite"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

}

extension TableViewController:  UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return items.count
        case 1:
            return lists.count
        case 2:
            return things.count
            
        default:
            return items.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        switch indexPath.section{
        case 0:
            cell.labelViewCell.text = items[indexPath.row]
            cell.imageViewCell.image = UIImage(systemName: "gear.circle")
            cell.imageViewCell.tintColor = .red
        case 1:
            cell.labelViewCell.text = lists[indexPath.row]
            cell.imageViewCell.image = UIImage(systemName: "person.crop.circle.fill")
            cell.imageViewCell.tintColor = .blue
        case 2:
            cell.labelViewCell.text = things[indexPath.row]
            cell.imageViewCell.image = UIImage(systemName: "pip.exit")
            cell.imageViewCell.tintColor = .green
        default:
            cell.labelViewCell.text = items[indexPath.row]
            cell.imageViewCell.image = UIImage(systemName: "questionmark.circle")
        }
        return cell
        
    }
}

extension TableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        switch indexPath.section{
        case 0:
            let data = items[indexPath.row]
           print("Selected data \(data)")
        case 1:
            let data = lists[indexPath.row]
            print("Selected data \(data)")
        case 2:
            let data = things[indexPath.row]
            print("Selected data \(data)")
        default:
            let data = items[indexPath.row]
            print("Selected data \(data)")
        }
    }
}
