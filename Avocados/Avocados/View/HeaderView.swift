//
//  HeaderView.swift
//  Avocados
//
//  Created by Adwithya Magow on 26/08/20.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - PROPERTIES
    var header: Header
    
    @State private var showHeadline: Bool = false
    
    var slideInAnimation: Animation = Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
        .speed(1)
        .delay(0.25)
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            HStack(alignment: .top, spacing: nil) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 6){
                    Text(header.headline.uppercased())
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                }//: VSTACK
                .padding(.horizontal, 20)
                .frame(width: 280, height: 100, alignment: .center)
                .background(Color("ColorBlackTransparentLight"))
            }//: HSTACK
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadline ? 75: 220)
            .onAppear(perform: {
                withAnimation{
                    self.showHeadline.toggle()
                }
            })
        }//: ZSTACK
        .frame(width: 480, height: 320, alignment: .center)
        
    }
}

//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView(header: headersData[1])
//            .previewLayout(.sizeThatFits)
//    }
//}
