//
//  SecondView.swift
//  SwiftUIBasic
//
//  Created by SangRae Kim on 4/16/24.
//

import SwiftUI

struct SecondView: View {
    
    func buttonView(image: String, color: Color) -> some View {
        Button {}
        label: {
            VStack {
                Image(systemName: image)
                    .tint(color)
                    .font(.largeTitle)
                    .padding(.bottom, 8)
                Text("그렇다")
                    .foregroundStyle(color)
            }
        }
        .asButtonModifier()
        .background(color.opacity(0.4))
    }
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                    .modifier(TopOffsetModifier())
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
                        .padding(.bottom, 8)
                        Text("등기부등본은 집주인만 발급받을 수 있다?")
                            .foregroundStyle(.white)
                            .font(.title)
                            .bold()
                            .padding(.bottom, 8)
                        HStack {
                            Text("매일 푸는 금융 퀴즈 290,300명 참여중")
                                .foregroundStyle(.white)
                            Spacer()
                        }
                        .padding(.bottom, 16)
                        HStack {
                            buttonView(image: "circle", color: .blue)
                            buttonView(image: "xmark", color: .red)
                        }
                    }
                    Spacer()
                        .frame(width: 16)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    SecondView()
}
