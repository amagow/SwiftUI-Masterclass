//
//  RecipeCardVIew.swift
//  Avocados
//
//  Created by Adwithya Magow on 26/08/20.
//

import SwiftUI

struct RecipeCardView: View {
    //MARK: - PROPERTIES
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            
            //Card Image
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(
                                    Font.title.weight(.light)
                                )
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentDark"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        }
                    }
                )
            
            VStack(alignment: .leading, spacing: 12){
                //Title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .bold()
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                //Headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.secondary)
                    .italic()
                
                //Rates
                RecipeRatingView(recipe: recipe)
                
                //Cooking
                RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
            
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture{
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal, content: {
            RecipeDetailView(recipe: recipe)
        })
    }
}

//MARK: - PREVIEW
struct RecipeCardVIew_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
            
    }
}
