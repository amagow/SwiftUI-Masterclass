//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Adwithya Magow on 28/08/20.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
    }
}

