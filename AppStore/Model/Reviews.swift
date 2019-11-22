//
//  Reviews.swift
//  AppStore
//
//  Created by Mateus Rovari on 21/11/19.
//  Copyright © 2019 Mateus Rovari. All rights reserved.
//

import Foundation


struct Reviews: Decodable {
    let feed: ReviewFeed
}

struct ReviewFeed: Decodable {
    let entry: [Entry]
}

struct Entry: Decodable {
    let title: Label
    let content: Label
    let author: Author
    let rating: Label
    
    private enum CodingKeys: String, CodingKey {
        case author, title, content
        case rating = "im:rating"
    }
}

struct Label: Decodable {
    let label: String
}

struct Author: Decodable {
    let name: Label
}
