//
//  TopOffsetModifier.swift
//  SwiftUIBasic
//
//  Created by SangRae Kim on 4/18/24.
//

import SwiftUI

struct TopOffsetModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(height: 40)
    }
}
