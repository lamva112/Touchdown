//
//  BrandItemView.swift
//  Touchdown
//
//  Created by bui khac lam on 24/08/2023.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPERTIES
    
    let brand : Brand
    
    //MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.opacity(0.12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
    }
}
