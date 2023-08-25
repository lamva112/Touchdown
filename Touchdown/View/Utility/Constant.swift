//
//  Constant.swift
//  Touchdown
//
//  Created by bui khac lam on 23/08/2023.
//

import SwiftUI

// DATA

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]

// COLOR

let colorBackground: Color = Color("Background")
let colorGray: Color = Color(UIColor.systemGray4)


// LAYOUT
let colunmSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10

var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count:2)
}

//UX
let feedback = UIImpactFeedbackGenerator(style: .medium)


