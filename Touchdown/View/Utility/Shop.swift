//
//  Shop.swift
//  Touchdown
//
//  Created by bui khac lam on 25/08/2023.
//

import Foundation

class Shop : ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
