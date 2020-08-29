//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Adwithya Magow on 26/08/20.
//

import SwiftUI

struct RecipeRatingView: View {
    
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self){
                _ in
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}
//
//struct RecipeRatingView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeRatingView()
//    }
//}
