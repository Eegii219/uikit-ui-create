//
//  PlanetViewController.swift
//  Project1
//
//  Created by Enkhtsetseg Unurbayar on 11/15/24.
//

import UIKit

class PlanetViewController: UIViewController {

    var netWorkManager = NetWorkManager()
    var planetElements = [PlanetElement]()
  
    
    @IBOutlet weak var planetViewTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.netWorkManager.deligate = self
        self.planetViewTable.dataSource = self
        self.planetViewTable.delegate = self
        

        

        // Do any additional setup after loading the view.
        DispatchQueue.global(qos: .utility).async {
            self.netWorkManager.getDataFromApiUsingProtocolDelegate(urlString: "https://swapi.dev/api/planets/", modelType: PlanetPage.self)
//            print("Data  received!!!!")

        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
       // #warning Incomplete implementation, return the number of sections
       return 1
   }

}

extension PlanetViewController: NetWorkManagerDelegate{
    
    
    func didReceiveData<T>(data: T) where T : Decodable {
        // Safely cast the data to PlanetPage
                guard let fetchedData = data as? PlanetPage else {
                    return
                }
                
                // Assign the results to planetElements
                self.planetElements = fetchedData.results
                
                // Reload table data on the main thread
                DispatchQueue.main.async {
                    self.planetViewTable.reloadData()
//                    print("Planet Elements received: \(self.planetElements)") // This prints the actual fetched data
                }
    }
    
    func didRecieveError(_ error: any Error) {
        print(error.localizedDescription)
    }
        
}

extension PlanetViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planetElements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCell", for: indexPath) as! PlanetViewCell
        
        let climateIndex = planetElements[indexPath.row].climate
        cell.cellLabel.text = climateIndex
        
        cell.cellImage.image = UIImage(systemName: "globe")
        cell.cellImage.tintColor = .blue
        return cell
        
    }
}

extension PlanetViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        //debug
        //print("Printing \(planetElements[indexPath.row].climate)")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            
        // Pass the selected data to the detail view controller
            let selectedPlanet = planetElements[indexPath.row]
            
            // Pass the property you need
            detailVC.planetName = selectedPlanet.name
            detailVC.planetClimate = selectedPlanet.climate
            detailVC.planetGravity = selectedPlanet.gravity
            detailVC.planetResidents = selectedPlanet.residents
            
        // Push to the detail view controller
        navigationController?.pushViewController(detailVC, animated: true)
            
        //debug
        let data = planetElements[indexPath.row]
        print(data)
            
        }
    }
    
}

