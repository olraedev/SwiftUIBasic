//
//  SecondView.swift
//  SwiftUIBasic
//
//  Created by SangRae Kim on 4/16/24.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                        .frame(width: 16)
                    VStack {
                        HStack {
                            Image(systemName: "rectangle.fill")
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                            Spacer()
                        }
                        Text("등기부등본은 집주인만 발급받을 수 있다?")
                            .foregroundStyle(.white)
                            .font(.title)
                    }
                    Spacer()
                        .frame(width: 16)
                }
            }
        }
    }
}

#Preview {
    SecondView()
}
