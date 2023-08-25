//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by bui khac lam on 24/08/2023.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PORPERTIES
    
    @EnvironmentObject var shop : Shop
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading,spacing: 6 ,content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.image ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        })//:VSTACK
        .foregroundColor(.white)
    }
}

//MARK: - PREVIEW

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
