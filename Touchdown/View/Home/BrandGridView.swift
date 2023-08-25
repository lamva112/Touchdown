//
//  BrandGridView.swift
//  Touchdown
//
//  Created by bui khac lam on 24/08/2023.
//

import SwiftUI

struct BrandGridView: View {
    
    //MARK: - PROPRETIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false,content: {
            LazyHGrid(rows: gridLayout, spacing: colunmSpacing,content: {
                ForEach(brands){brand in
                    BrandItemView(brand: brand)
                }
            })//:GRID
            .frame(height: 200)
            .padding(15)
        })//:SCROLL
    }
}

//MARK: - PREVIEW

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
