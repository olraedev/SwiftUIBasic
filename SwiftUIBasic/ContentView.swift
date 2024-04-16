//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by SangRae Kim on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                    .frame(height: 30)
                HStack {
                    Text("포인트를 더 모을 수 있게 맞춤 혜택을\n추천해드릴까요?")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .bold()
                        .padding()
                    Spacer()
                }
                HStack {
                    Image(systemName: "person.fill")
                        .foregroundStyle(.blue)
                        .padding()
                        .font(.title2)
                    Text("매일 포인트 받는 출석체크.퀴즈")
                        .foregroundStyle(.white)
                    Spacer()
                }
                HStack {
                    Image(systemName: "circle.fill")
                        .foregroundStyle(.red)
                        .padding()
                        .font(.title2)
                    Text("새로운 이벤트")
                        .foregroundStyle(.white)
                    Spacer()
                }
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                        .padding()
                        .font(.title2)
                    Text("미션 추천")
                        .foregroundStyle(.white)
                    Spacer()
                }
                
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
