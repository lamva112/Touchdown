//
//  SectionView.swift
//  Touchdown
//
//  Created by bui khac lam on 24/08/2023.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTIES
    @State var rolateClockwise: Bool
    
    
    //MARK: - BODY
    var body: some View {
        VStack (spacing: 0){
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees:rolateClockwise ? 90: -90))
            
            Spacer()
            
        }//: VSTACK
        .background(Color.gray.cornerRadius(12))
        .frame(width: 85)
    }
}

//MARK: - PREVIEW

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rolateClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
