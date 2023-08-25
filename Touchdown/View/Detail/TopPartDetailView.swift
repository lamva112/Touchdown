//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by bui khac lam on 24/08/2023.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop : Shop
    
    //MARK: - BODY
    var body: some View {
        HStack (alignment: .center,spacing: 6,content: {
            //PRICE
            VStack(alignment: .leading, spacing: 6,content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
                
            })
            
            Spacer()
            //PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y:isAnimating ? 0 : -35)
            
        })//:STACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                
            }
        })
        
    }
}

//MARK: - PREVIEW

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
        
    }
}
