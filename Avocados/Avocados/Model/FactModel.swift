//
//  FactModel.swift
//  Avocados
//
//  Created by Adwithya Magow on 26/08/20.
//

import Foundation

//MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
    
}
