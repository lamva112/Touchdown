//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by bui khac lam on 24/08/2023.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false,content: {
            LazyHGrid(rows: gridLayout, alignment: .center,spacing: colunmSpacing,pinnedViews: [],content: {
                 Section(header: SectionView(rolateClockwise: false),footer: SectionView(rolateClockwise: true)) {
                    ForEach(categories){category in
                        CategoryItemView(category: category)
                    }
                }
            })//:GRID
            .frame(height:140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        })
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
