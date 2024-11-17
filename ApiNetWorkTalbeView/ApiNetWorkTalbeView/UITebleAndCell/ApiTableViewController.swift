//
//  ApiTableViewController.swift
//  ApiNetWorkTalbeView
//
//  Created by Enkhtsetseg Unurbayar on 11/13/24.
//

import UIKit

class ApiTableViewController:UIViewController{

    @IBOutlet weak var apiTableView: UITableView!
    
   var networkManager: NetworkManager = NetworkManager()
    
    var products = [Product]()
//    var userProfiles = [UserProfile] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.apiTableView.dataSource = self
        self.apiTableView.delegate = self
        self.networkManager.delegate = self
       
        
        DispatchQueue.global(qos: .utility).async {
        self.networkManager.getDataFromApiUsingProtocolDelegate (urlString: "https://fakestoreapi.com/products", modelType: [Product].self)
            
//        self.networkManager.getData*/FromApiUsingProtocolDelegate (urlString: "https://reqres.in/api/users", modelType: [UserProfile].self)
    
        }
    }
    
    // MARK: - Filter function
//        func filterData(by name: String) {
//          userProfiles =  userProfiles.flatMap { userProfile in
//                userProfile .data.filter { datum in
//                    datum.firstName.lowercased().contains(name.lowercased())
//                }
//            }
//            apiTableView.reloadData()
//        }

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


}

extension ApiTableViewController:NetworkManagerDelegate{
    
  
    // func from protocol NetworkManagerDelegate
    func didRecieveData<T:Decodable>(data:T){
        print("Data received in didReceiveData")
                
                // Safely cast the data
        guard let fetchedProducts = data as? [Product] else {
                print("Failed to cast data as [Product]")
                return
                }
        
//        guard let fetchedWelcomes = data as? [UserProfile] else {
//                    print("Failed to cast data as [UserProfile]")
//                    return
//                }
                
                // Update products array
                self.products = fetchedProducts
//                self.userProfiles = fetchedUserProfiles
        

                
                DispatchQueue.main.async {
                    // Reload table view on main thread after receiving data
                    self.apiTableView.reloadData()
                }
        }
    
    // func from protocol NetworkManagerDelegate
    func didRecieveError(error: any Error) {
        print("Network deligate error!!!\(error.localizedDescription)")
       
    }
    
}


extension ApiTableViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
//        return userProfiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "ApiTableViewCell", for: indexPath) as! ApiTableViewCell
    
        cell.cellLable.text = products[indexPath.row].description
//        cell.cellLable.text = userProfiles[indexPath.row].fname
               print("=========")
           
        cell.cellImage.image = UIImage(systemName: "richtext.page.fill.he")
        cell.cellImage.tintColor = .brown

        return cell
    }
    
    
    
}



extension ApiTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("Printing\(welcomes[indexPath.row])")
        print("Printing\(products[indexPath.row])")
        
        
    }
}
