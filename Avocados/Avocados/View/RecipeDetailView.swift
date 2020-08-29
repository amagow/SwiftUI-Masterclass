//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Adwithya Magow on 26/08/20.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            VStack(alignment: .center, spacing: 0) {
                //Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group{
                    //Title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    //Ratings
                    RecipeRatingView(recipe: recipe)
                    
                    //Cooking
                    RecipeCookingView(recipe: recipe)
                    
                    
                    
                    //Ingridients
                    Text("Ingredients")
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5){
                        ForEach(recipe.ingredients, id:\.self){
                            item in
                            VStack(alignment: .leading, spacing: 5){
                                Text(item)
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                                    .multilineTextAlignment(.leading)
                                Divider()
                                
                            }
                        }
                    }

                    
                    //Instructions
                    Text("Instructions")
                        .modifier(TitleModifier())
                    
                    
                    
                    ForEach(recipe.instructions, id: \.self){
                        item in
                        VStack(alignment: .center, spacing: 5){
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }
                        
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }//: VSTACK
        }//: SCROLL VEW
        .edgesIgnoringSafeArea(.all)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .imageScale(.large)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2 : 0.8,
                                         anchor: .center)
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }
            }
        )
        .onAppear{
            withAnimation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true)){
                self.pulsate.toggle()
            }
        }
    }
}


struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
    }
}
