//
//  UserViewController.swift
//  LoginPage
//
//  Created by Enkhtsetseg Unurbayar on 11/12/24.
//


/*
 GETTING DATA FROM JSON FILE
 */
import UIKit


class UserViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var users = [UserModel]()

  
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
        self.tableView.dataSource = self
//        self.tableView.delegate = self
        getDataFromJSON()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func getDataFromJSON() {
        let bundle = Bundle(for: UserViewController.self)
        guard let path = bundle.url(forResource: "Users", withExtension: "json") else {
            print("Failed")
            return
        }
        do{
           let data = try Data(contentsOf: path)
           let parsedData = try JSONDecoder().decode([UserModel].self, from: data)
           print(parsedData)
           users = parsedData
            
                
            } catch {
            
                print(error.localizedDescription)
        }
        }
    }



extension UserViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as! UserTableViewCell

        cell.cellLabel.text = users[indexPath.row].name
        cell.cellImage.image = UIImage(systemName: "person.crop.circle.fill")
        cell.cellImage.tintColor = .blue
        return cell
    }
}

extension UserViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Printing\(users[indexPath.row])")
               
    }
}
