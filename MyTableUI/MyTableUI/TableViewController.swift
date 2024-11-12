//
//  TableViewController.swift
//  MyTableUI
//
//  Created by Enkhtsetseg Unurbayar on 11/11/24.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var items = ["Settings", "Profile", "Logout", "Help", "About"]
    var lists = ["Message", "Notification", "Settings"]
    var things = ["like", "dislike", "love", "favorite"]
    var people = ["p1", "p2", "p3","p4", "p5"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
    }
    
    
    //number of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }

}

//
extension TableViewController:  UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return items.count
        case 1:
            return lists.count
        case 2:
            return things.count
        case 3:
            return people.count
            
        default:
            return items.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        switch indexPath.section{
        case 0:
            cell.cellLabel.text = items[indexPath.row]
            cell.cellImage.image = UIImage(systemName: "gear.circle")
            cell.cellImage.tintColor = .red
        case 1:
            cell.cellLabel.text = lists[indexPath.row]
            cell.cellImage.image = UIImage(systemName: "person.crop.circle.fill")
            cell.cellImage.tintColor = .blue
        case 2:
            cell.cellLabel.text = things[indexPath.row]
            cell.cellImage.image = UIImage(systemName: "pip.exit")
            cell.cellImage.tintColor = .green
        case 3:
            cell.cellLabel.text = people[indexPath.row]
            cell.cellImage.image = UIImage(systemName: "person.crop.circle")
            cell.cellImage.tintColor = .yellow
        default:
            cell.cellLabel.text = items[indexPath.row]
            cell.cellImage.image = UIImage(systemName: "questionmark.circle")
            cell.cellImage.tintColor = .purple
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
            
               // Instantiate CellDetailViewController
               if let cellDetailViewController = storyboard?.instantiateViewController(withIdentifier: "CellDetailViewController") as? CellDetailViewController {
                   // Set the cellDetailData property with the selected data
                   cellDetailViewController.cellDetailLabel = data
                
                   
                   // Push the view controller onto the navigation stack
                   self.navigationController?.pushViewController(cellDetailViewController, animated: true)
               }
               
               // Optionally, deselect the row after selection
               tableView.deselectRow(at: indexPath, animated: true)
        case 1:
            let data = lists[indexPath.row]
            print("Selected data \(data)")
            // Instantiate CellDetailViewController
            if let cellDetailViewController = storyboard?.instantiateViewController(withIdentifier: "CellDetailViewController") as? CellDetailViewController {
                // Set the cellDetailData property with the selected data
                cellDetailViewController.cellDetailLabel = data
                
                // Push the view controller onto the navigation stack
                self.navigationController?.pushViewController(cellDetailViewController, animated: true)
            }
        case 2:
            let data = things[indexPath.row]
            print("Selected data \(data)")
            // Instantiate CellDetailViewController
            if let cellDetailViewController = storyboard?.instantiateViewController(withIdentifier: "CellDetailViewController") as? CellDetailViewController {
                // Set the cellDetailData property with the selected data
                cellDetailViewController.cellDetailLabel = data
//                cellDetailViewController.cell
                
                // Push the view controller onto the navigation stack
                self.navigationController?.pushViewController(cellDetailViewController, animated: true)
            }
        case 3:
            let data = people[indexPath.row]
            print("Selected data \(data)")
            // Instantiate CellDetailViewController
            if let cellDetailViewController = storyboard?.instantiateViewController(withIdentifier: "CellDetailViewController") as? CellDetailViewController {
                // Set the cellDetailData property with the selected data
                cellDetailViewController.cellDetailLabel = data
//                cellDetailViewController.cell
                
                // Push the view controller onto the navigation stack
                self.navigationController?.pushViewController(cellDetailViewController, animated: true)
            }
        default:
            let data = items[indexPath.row]
            print("Selected data \(data)")
        }
    }
}
