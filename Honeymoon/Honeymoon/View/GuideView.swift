//
//  GuideView.swift
//  Honeymoon
//
//  Created by Adwithya Magow on 28/08/20.
//

import SwiftUI

struct GuideView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    
    //MARK: - BODY
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 20){
                
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started!!")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                Text("Discover and pick the perfect destination for your own romantic Honeymoon!")
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25){
                    GuideComponent(title: "Like", subtitle: "Swipe right", description: "Do you like this destination? Touch the screen and swipe right", icon: "heart.circle")
                        .padding(.vertical, 5)
                    GuideComponent(title: "Dismiss", subtitle: "Swipe left", description: "Would you rather skip this place? Touch the screen and swipe left. You will no longer see it.", icon: "xmark.circle")
                        .padding(.vertical, 5)
                    GuideComponent(title: "Book", subtitle: "Tap the button", description: "Our selection of honeymoon resorts is the perfect setting for you to start your new life together", icon: "checkmark.square")
                        .padding(.vertical, 5)
                }
                
                Spacer(minLength: 10)
                
                Button(action: {
                    //                    print("A button was tapped")
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                })
                
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
            
        }// VSTACK
    }// SCROLL VIEW
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
