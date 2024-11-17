//
//  NetWorkManager.swift
//  Project1
//
//  Created by Enkhtsetseg Unurbayar on 11/15/24.
//


import Foundation

protocol NetWorkManagerDelegate{
    func didReceiveData<T: Decodable>( data:T)
    func didRecieveError(_ error: Error)
        
    }

struct NetWorkManager {
   
    var deligate: NetWorkManagerDelegate?
    var didRecieveData: NetWorkManagerDelegate?
   
    func getDataFromApiUsingProtocolDelegate <T:Decodable>(urlString: String, modelType: T.Type) {
        
    
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error {
                print(error.localizedDescription)
                self.deligate?.didRecieveError(error)
                return
            }
           
            guard let response =  response as? HTTPURLResponse else{ return }
            guard (200...299).contains(response.statusCode) else{ return}
            
            guard let data = data else { return }
            do {
                let parsedData =  try JSONDecoder().decode(modelType.self, from: data)
//                print("parsedData = \(parsedData)")
                
                self.deligate?.didReceiveData(data: parsedData)
                
            } catch {
                print(error.localizedDescription)
                        
            }
        }
        task.resume()
    }
    
    
}
