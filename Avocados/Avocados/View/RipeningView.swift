//
//  RipeningView.swift
//  Avocados
//
//  Created by Adwithya Magow on 26/08/20.
//

import SwiftUI

struct RipeningView: View {
    
    @State private var slideInAnimation: Bool = false
    var ripening: Ripening
    
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color("ColorGreenLight"))
                        .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                Circle()
                    .fill(Color("ColorAppearenceAdaptive"))
                    .frame(width: 120, height: 120, alignment: .center)
                )
                .zIndex(1)
                .offset(y: self.slideInAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10){
                
                //STAGE
                VStack(alignment: .center, spacing: 0){
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .bold()
                    
                    Text("STAGE")
                        .font(Font.system(.body, design: .serif))
                        .fontWeight(.heavy)
                }
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                
                //TITLE
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .bold()
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                    )
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                
                Spacer()
                
                //DESC
                Text(ripening.description)
                    .foregroundColor(Color("ColorGreenDark"))
                    .bold()
                    .lineLimit(nil)
                
                Spacer()
                
                //RIPENESS
                Text(ripening.ripeness)
                    .foregroundColor(.white)
                    .font(.system(.callout, design: .serif))
                    .bold()
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom)
                            )
                    )
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                
                
                //INSTRUCTION
                Text(ripening.instruction)
                    .foregroundColor(Color("ColorGreenLight"))
                    .bold()
                    .lineLimit(3)
                    .frame(width: 160)
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(20)
            
        }//: VSTACK
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 1)){
                self.slideInAnimation.toggle()
            }
        })
    }
}

struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(ripening: ripeningData[1])
    }
}
