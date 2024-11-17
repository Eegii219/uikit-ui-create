//
//  NetworkManager.swift
//  GetDataFromAPI
//
//  Created by Enkhtsetseg Unurbayar on 11/13/24.
//
import Foundation

protocol NetworkManagerDelegate{
    func didRecieveData<T:Decodable>(data: T)
    func didRecieveError(error: Error)
}

class NetworkManager {
    
    var delegate: NetworkManagerDelegate?
    var didRecieveData: NetworkManagerDelegate?
    
    func getDataFromApiUsingProtocolDelegate <T:Decodable>(urlString: String, modelType: T.Type) {
        
    
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error {
                print(error.localizedDescription)
                self.delegate?.didRecieveError(error:error)
                return
            }
           
            guard let response =  response as? HTTPURLResponse else{ return }
            guard (200...299).contains(response.statusCode) else{ return}
            
            guard let data = data else { return }
            do {
                let parsedData =  try JSONDecoder().decode(modelType.self, from: data)
                print("parsedData = \(parsedData)")
                self.delegate?.didRecieveData(data: parsedData)
                
            } catch {
                print(error.localizedDescription)
                        
            }
        }
        task.resume()
    }
    
}
