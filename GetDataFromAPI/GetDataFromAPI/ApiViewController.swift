//
//  ApiViewController.swift
//  GetDataFromAPI
//
//  Created by Enkhtsetseg Unurbayar on 11/13/24.
//

//import UIKit
//
//class ApiViewController: UIViewController {
//    
//    @IBOutlet weak var collectionView: UICollectionView!
//    
//    var networkManager = NetworkManager()
//    
//    var products = [Product]()
//    
//    deinit{
//           print("deinit for listvc")
//       }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Do any additional setup after loading the view.
//        self.networkManager.delegate = self
//    
//        
//        DispatchQueue.global(qos: .utility).async {
//
//            self.networkManager.getDataFromApiUsingProtocolDelegate (urlString: "https://fakestoreapi.com/products", modelType: [Product].self)
//                   
//               }
//        
//        
//    }
//
//}
//
//
//extension ApiViewController: NetworkManagerDelegate {
//    
//    func didRecieveError(error: any Error) {
//        <#code#>
//    }
//    
//    
//    func didRecieveData<T:Decodable>(data:T){
//        print("got response in didRecieveData")
//        self.products = data as! [Product]
//        DispatchQueue.main.async {
//            self.collectionView.reloadData()
//        }
//    }
//    
//}
//
//
//extension ApiViewController: UICollectionViewDataSource{
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//       
//         return products.count
//     }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        
//        let cell = collectionView.dequeueReusableCell( withReuseIdentifier: "CellCollection", for: indexPath) as! ApiCollectionViewCell
//        cell.cellCollectionLabel.text = products[indexPath.row].title
//        cell.cellCollectionImage.image = UIImage(systemName: "richtext.page.fill.he")
//            cell.cellCollectionImage.tintColor = .brown
//        
//        return cell
//    }
//    
//      
//    }
//
//extension ApiViewController:UITableViewDelegate{
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print ("selected row \(indexPath.row)")
//    }
//}
