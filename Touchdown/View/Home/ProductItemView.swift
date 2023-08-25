//
//  ProductItemView.swift
//  Touchdown
//
//  Created by bui khac lam on 24/08/2023.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPERTIES
    
    let product:Product
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading,spacing: 6 ,content: {
            //PHOTO
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
                    
            }//:ZTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            //NAME
            
            Text(product.name)
                .font(.title2)
                .foregroundColor(.black)
            //PRICE
            
            Text("$\(product.price)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        })//: VSTACK
    }
}

//MARK: - PREVIEW

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
        
    }
}
