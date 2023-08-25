//
//  CategoryModel.swift
//  Touchdown
//
//  Created by bui khac lam on 24/08/2023.
//

import Foundation

struct Category : Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
