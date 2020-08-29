//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Adwithya Magow on 25/08/20.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - PROPERTIES
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack(alignment: .center, spacing: 25){
                Spacer()
                HStack {
                    ForEach(ripeningStages){
                        item in
                        RipeningView(ripening: item)
                    }
                }
                Spacer()
            }
        }
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
