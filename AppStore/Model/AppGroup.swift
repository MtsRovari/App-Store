//
//  AppGroup.swift
//  AppStore
//
//  Created by Mateus Rovari on 11/11/19.
//  Copyright © 2019 Mateus Rovari. All rights reserved.
//

import Foundation

struct AppGroup: Decodable {
    
    let feed: Feed
}

struct Feed: Decodable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Decodable {
    let name, artistName, artworkUrl100: String
}
