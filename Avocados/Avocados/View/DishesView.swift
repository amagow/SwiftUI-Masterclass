//
//  DishesVIew.swift
//  Avocados
//
//  Created by Adwithya Magow on 26/08/20.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            VStack(alignment: .leading, spacing: 4){
                HStack{
                    Image("icon-toasts")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                    Spacer()
                    Text("Toasts")
                }
                Divider()
                HStack{
                    Image("icon-tacos")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                    Spacer()
                    Text("Tacos")
                }
                Divider()
                HStack{
                    Image("icon-salads")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                    Spacer()
                    Text("Salads")
                }
                Divider()
                HStack{
                    Image("icon-halfavo")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                    Spacer()
                    Text("Spreads")
                }
                
            }
            
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.largeTitle.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            VStack(alignment: .trailing, spacing: 4){
                HStack{
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                }
                Divider()
                HStack{
                    Text("Sandwhich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                }
                Divider()
                HStack{
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                }
                Divider()
                HStack{
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                }
                Divider()
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 280)
    }
}
//
//struct DishesView_Previews: PreviewProvider {
//    static var previews: some View {
//        DishesView()
//            .previewLayout(.fixed(width: 414, height: 280))
//    }
//}
