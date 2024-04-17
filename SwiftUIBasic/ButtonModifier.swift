//
//  ButtonModifier.swift
//  SwiftUIBasic
//
//  Created by SangRae Kim on 4/18/24.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(width: 160, height: 120)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func asButtonModifier() -> some View {
        modifier(ButtonModifier())
    }
}
