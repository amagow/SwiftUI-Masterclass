//
//  AvocadosView.swift
//  Avocados
//
//  Created by Adwithya Magow on 25/08/20.
//

import SwiftUI

struct AvocadosView: View {
    //MARK: - PROPERTIES
    @State private var animate:Bool = false
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.animate ? 1 : 0.9)
                .opacity(self.animate ? 1 : 0.9)
                
            
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                Text("""
Creamy, green, and full of nutrients!
 Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                    .foregroundColor(Color("ColorGreenLight"))
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
                
            }//: VSTACK
            .padding()
            Spacer()
        }//: VSTACK
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
        )
        .onAppear(perform: {
            withAnimation(Animation.easeInOut(duration: 5).repeatForever(autoreverses: true)) {
                self.animate.toggle()
            }
        })
        
    }
}

//MARK: - PREVIEW
struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView().preferredColorScheme(.light).previewDevice("iPhone 11 Pro")
    }
}
