//
//  File.swift
//
//
//  Created by Ahmed M. Hassan on 18/06/2022.
//

import Foundation

public struct Product: Decodable {
    let id: Int
    let title: String
    let price: Double
    let description, category: String
    let image: String
    let rating: Rating

    enum CodingKeys: String, CodingKey {
        case id, title, price
        case description
        case category, image, rating
    }

    // MARK: - Rating

    struct Rating: Decodable {
        let rate: Double
        let count: Int
    }
}

public typealias ProductsList = [Product]
