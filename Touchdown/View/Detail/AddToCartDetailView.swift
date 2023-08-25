//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by bui khac lam on 25/08/2023.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.body,design: .rounded))
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
            Spacer()
        })//:BUTTON
        .padding(15)
        .background(
            Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green:shop.selectedProduct?.green ?? sampleProduct.green, blue:shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
