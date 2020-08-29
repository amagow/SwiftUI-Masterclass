//
//  RipeningModel.swift
//  Avocados
//
//  Created by Adwithya Magow on 26/08/20.
//

import Foundation

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
