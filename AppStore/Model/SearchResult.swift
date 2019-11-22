//
//  SearchResult.swift
//  AppStore
//
//  Created by Mateus Rovari on 07/11/19.
//  Copyright © 2019 Mateus Rovari. All rights reserved.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackId: Int
    let trackName: String
    let primaryGenreName: String
    var averageUserRating: Float?
    let screenshotUrls: [String]
    let artworkUrl100: String
    var formattedPrice: String?
    let description: String
    var releaseNotes: String?
}
