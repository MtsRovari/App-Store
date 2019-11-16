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
    
    func fetchApps(searchTerm: String, completion: @escaping (SearchResult?, Error?) -> ()) {
        
        let urlString = "http://itunes.apple.com/search?term=\(searchTerm)&entity=software"

        fetchGenericJSONData(urlString: urlString, completion: completion)
    }
    
    func fetchTopGrossing(completion: @escaping (AppGroup?, Error?) -> ()) {
        
        let urlString = "https://rss.itunes.apple.com/api/v1/us/ios-apps/top-grossing/all/25/explicit.json"
        
        fetchAppGroup(urlString: urlString, completion: completion)
    }
    
    func fetchGames(completion: @escaping (AppGroup?, Error?) -> ()) {
        
        let urlString = "https://rss.itunes.apple.com/api/v1/us/ios-apps/new-games-we-love/all/50/explicit.json"
        
        fetchAppGroup(urlString: urlString, completion: completion)
    }
    
    func fetchAppGroup(urlString: String, completion: @escaping (AppGroup?, Error?) -> Void) {

        fetchGenericJSONData(urlString: urlString, completion: completion)
    }
    
    func fetchSocialApps(completion: @escaping ([SocialApp]?, Error?) -> Void) {
        let urlString = "https://api.letsbuildthatapp.com/appstore/social"

        fetchGenericJSONData(urlString: urlString, completion: completion)
    }
    
    func fetchGenericJSONData<T: Decodable>(urlString: String, completion: @escaping (T?, Error?) -> ()) {
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                completion(nil, error)
                return
            }
            do {
                let objects = try JSONDecoder().decode(T.self, from: data!)
                completion(objects, nil)
            } catch let jsonError {
                completion(nil, jsonError)
                print("Error to decode json: ", jsonError)
            }
        }.resume()
    }
    
}


