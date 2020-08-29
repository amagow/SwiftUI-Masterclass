//
//  HeaderModel.swift
//  Avocados
//
//  Created by Adwithya Magow on 26/08/20.
//

import Foundation

//MARK: - HEADER MODEL

struct Header: Identifiable{
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
