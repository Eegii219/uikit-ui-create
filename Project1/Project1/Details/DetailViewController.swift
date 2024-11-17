//
//  DetailViewController.swift
//  Project1
//
//  Created by Enkhtsetseg Unurbayar on 11/16/24.
//

import UIKit

class DetailViewController: UIViewController {
    
   
    @IBOutlet weak var labelDtail: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var gravityLabel: UILabel!
    @IBOutlet weak var residentsLable: UILabel!
    
    
    var planetClimate: String?
    var planetName: String?
    var planetGravity: String?
    var planetResidents: [String]?

     

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let dataFromCell = planetClimate{
//
//            labelDtail.text = dataFromCell
//        }
        
        if let dataFromCell = planetClimate {
                labelDtail.text = "Climate: \(dataFromCell)"
            } else {
                labelDtail.text = "Climate: Unknown"  // Default value if planetClimate is nil
            }
        if let nameFromCell =  planetName{
            nameLabel.text = "Name : \(nameFromCell)"
        } else {
            planetName = "Name Unknown"  // Or any default value
        }
        
        if let gravityFromCell =  planetGravity{
            gravityLabel.text = "Gravity: \(gravityFromCell)"
        } else {
            planetName = "Gravity Unknown"  // Or any default value
        }
      
        if let residentsFromCell = planetResidents{
            residentsLable.text = "Residents : \( residentsFromCell.joined(separator: "\n "))"
        }
       
    }
    

  

}




/*
 override func viewDidLoad() {
     super.viewDidLoad()
     
     
//        self.netWorkManager.deligate = self
//
//
//
//        DispatchQueue.global(qos: .utility).async {
//            self.netWorkManager.getDataFromApiUsingProtocolDelegate(urlString: "https://swapi.dev/api/planets/", modelType: PlanetPage.self)
////            print("Data  received!!!!")
//
//        }
 }
 
 */

//extension  DetailViewController: NetWorkManagerDelegate{
//    
//    
//    func didReceiveData<T>(data: T) where T : Decodable {
//        // Safely cast the data to PlanetPage
//                guard let fetchedData = data as? PlanetPage else {
//                    return
//                }
//                
//                // Assign the results to planetElements
//                self.planetElements = fetchedData.results
//                
//                // Reload table data on the main thread
//                DispatchQueue.main.async {
////                    self.planetViewTable.reloadData()
//                    print("Planet Elements detaild received: \(self.planetElements)") // This prints the actual fetched data
//                }
//    }
//    
//    func didRecieveError(_ error: any Error) {
//        print(error.localizedDescription)
//    }
//        
//}
