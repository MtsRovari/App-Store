//
//  Service.swift
//  AppStore
//
//  Created by Mateus Rovari on 08/11/19.
//  Copyright © 2019 Mateus Rovari. All rights reserved.
//

import Foundation

class Service {
    
    static let shared = Service()
    
    func fetchApps(completion: @escaping ([Result]) -> ()) {
        
        let urlString = "http://itunes.apple.com/search?term=instagram&entity=software"

        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { (data, response, error) in

            if let error = error {
                print("Failed to fetch apps: ", error)
                return
            }

            //Success

            guard let data = data else { return }

            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                
                completion(searchResult.results)

            } catch let jsonError {
                print("Error to decode json: ", jsonError)
            }

        }.resume()
    }
}
