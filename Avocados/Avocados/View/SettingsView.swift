//
//  SettingsView.swift
//  Avocados
//
//  Created by Adwithya Magow on 25/08/20.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotif: Bool = true
    @State private var backgroundRefresh: Bool = true
    
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            
            //MARK: - HEADER
            VStack(alignment: .center, spacing: 5){
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .bold()
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form{
                //MARK: - SECTION 1
                Section(header: Text("General Settings")){
                    Toggle(isOn: self.$enableNotif){
                        Text("Enable Notifications")
                    }
                    
                    Toggle(isOn: self.$backgroundRefresh){
                        Text("Background Refresh")
                    }
                    
                }
                
                //MARK: - SECTION 1
                Section(header: Text("Application")){
                    HStack{
                        Text("Product").foregroundColor(.secondary)
                        Spacer()
                        Text("Avocado Recipes")
                    }
                    HStack{
                        Text("Compatibility").foregroundColor(.secondary)
                        Spacer()
                        Text("iPhone & iPad")
                    }
                    HStack{
                        Text("Developer").foregroundColor(.secondary)
                        Spacer()
                        Text("Adwithya Magow")
                    }
                    HStack{
                        Text("Designer").foregroundColor(.secondary)
                        Spacer()
                        Text("Robert Petras")
                    }
                    HStack{
                        Text("Version").foregroundColor(.secondary)
                        Spacer()
                        Text("1.0.0")
                    }
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
