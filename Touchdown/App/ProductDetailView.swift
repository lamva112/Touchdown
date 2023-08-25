//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by bui khac lam on 24/08/2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop : Shop
    var body: some View {
        VStack(alignment: .leading, content: {
            //NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal, 15)
                .padding(.bottom)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
            //DETAIL TOP BAR
            TopPartDetailView()
                .zIndex(1)
                .padding(.horizontal)
            //DETAIL BOTTOM BAR
            VStack(alignment: .center,spacing: 0 ,content: {
                //RATINGS + SIZES
                RatingsSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                //DESCRIPTION
                ScrollView(.vertical,showsIndicators: false,content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//:SCROLL
                //QUANLITY + FAVORITE
                
                QuantityFavoriteDetailView()
                    .padding(.vertical,10)
                
                //ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom,20)

            })//:VSTACK
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top,-105)
            )
        })//: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(
            Color(
                red:shop.selectedProduct?.red ?? sampleProduct.red,
                green:shop.selectedProduct?.green ?? sampleProduct.green,
                blue: sampleProduct.blue)
        )
        .ignoresSafeArea(.all,edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
