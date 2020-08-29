//
//  SymbolModifier.swift
//  Honeymoon
//
//  Created by Adwithya Magow on 28/08/20.
//

import SwiftUI

struct SymbolModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
        .font(.system(size: 128))
        .shadow(color: Color.black.opacity(0.2), radius: 12, x: 0, y: 0)
    }
}

