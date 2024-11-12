//
//  SecondViewController.swift
//  Uikit-Practice
//
//  Created by Enkhtsetseg Unurbayar on 11/10/24.
//
import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

 
    @IBOutlet var tableview: UITableView!
    
    // Sample data for the table view
    let data = ["Item 1", "Item 2", "Item 3", "Item 4"]

    // MARK: - View Lifecycle
       override func viewDidLoad() {
           super.viewDidLoad()
           
           // Set the dataSource and delegate to self
           tableview.dataSource = self
           tableview.delegate = self
           
           // Register the default UITableViewCell
           tableview.register(UITableViewCell.self, forCellReuseIdentifier: "DefaultCell")
       }

       // MARK: - UITableViewDataSource Methods

       // Number of rows in the section
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return data.count
       }

       // Configure the cell for each row
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           // Dequeue a reusable cell
           let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
           
           // Set the text of the cell from the data array
           cell.textLabel?.text = data[indexPath.row]
           
           return cell
       }

       // MARK: - UITableViewDelegate Methods

       // Handle row selection
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           // Print the selected item (you can add more logic here)
           let selectedItem = data[indexPath.row]
           print("Selected: \(selectedItem)")
           
           // Deselect the row after selection
           tableView.deselectRow(at: indexPath, animated: true)
       }

}
