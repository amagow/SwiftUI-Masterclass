//
//  ContentView.swift
//  Avocados
//
//  Created by Adwithya Magow on 25/08/20.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var recipes: [Recipe] = recipeData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            //MARK: - HEADER
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 0) {
                    ForEach(headers){
                        header in
                        HeaderView(header: header)
                    }
                }
            }//: SCROLL VIEW
            
            //MARK: - DISHES
            Text("Avocado Dishes")
                .modifier(TitleModifier())
            DishesView()
                .frame(maxWidth: 640)
            
            //MARK: - FACTS
            
            Text("Avocado Facts")
                .modifier(TitleModifier())
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 60){
                    ForEach(facts){
                        fact in
                        FactsView(fact: fact)
                    }
                }
                .padding(.vertical)
                .padding(.leading, 60)
                .padding(.trailing, 10)
            }
            
            //MARK: - RECIPE CARDS
            Text("Avocado Recipes")
                .modifier(TitleModifier())
            
            VStack(alignment: .center, spacing: 20){
                ForEach(recipes){
                    recipe in
                    RecipeCardView(recipe: recipe)
                }
            }
            .frame(maxWidth: 640)
            .padding(.horizontal)
            
            //MARK: - FOOTER
            
            VStack {
                Text("All about Avocados")
                    .modifier(TitleModifier())
                Text("Everything you wanted to know about Avocados but were too afraid to ask.")
                    .font(.system(.body, design:.serif
                    ))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.gray)
                    .frame(minHeight: 60)
            }//: VSTACK
            .frame(maxWidth: 640)
            .padding()
            .padding(.bottom, 85)
        }//: SCROLL VIEW
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View{
        content
            .font(Font.system(.title, design: .serif).bold())
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewDevice("iPhone 11")
        }
    }
}
