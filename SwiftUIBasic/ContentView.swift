//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by SangRae Kim on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    
    var title: some View = HStack {
        Text("포인트를 더 모을 수 있게 맞춤 혜택을\n추천해드릴까요?")
            .font(.title3)
            .foregroundStyle(.white)
            .bold()
            .padding()
        Spacer()
    }
    
    func imageAndText(image: String, color: Color, text: String) -> some View {
        HStack {
            Image(systemName: image)
                .foregroundStyle(color)
                .padding()
                .font(.title2)
            Text(text)
                .foregroundStyle(.white)
            Spacer()
        }
    }
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                    .modifier(TopOffsetModifier())
                
                title
                
                imageAndText(image: "person.fill", color: .blue, text: "매일 포인트 받는 출석체크.퀴즈")
                imageAndText(image: "circle.fill", color: .red, text: "새로운 이벤트")
                imageAndText(image: "star.fill", color: .yellow, text: "미션 추천")
                
                Spacer()
                
                HStack {
                    Text("[선택]맞춤형 서비스 이용 동의")
                        .foregroundStyle(.white)
                        .padding()
                    Spacer()
                }
                
                Button {
                    
                } label: {
                    Text("동의하기")
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 50)
                .background(.blue)
                .clipShape(.rect(cornerRadius: 10))
                .foregroundStyle(.white)
                .padding()
                
                Button {
                    
                } label: {
                    Text("다음에 하기")
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
