//
//  RandomImageView.swift
//  SwiftUIBasic
//
//  Created by SangRae Kim on 4/19/24.
//

import SwiftUI

struct RandomImageView: View {
    
    let url = URL(string: "https://picsum.photos/200/300")
    @State var titles = ["첫번째 섹션", "두번째 섹션", "세번째 섹션"]
    
    func sectionImages(title: Binding<String>) -> some View {
        Section(title.wrappedValue) {
            ScrollView(.horizontal) {
                LazyHStack(spacing: 10, content: {
                    ForEach(0..<8) { value in
                        NavigationLink {
                            DetailView(title: title)
                        } label: {
                            AsyncImage(url: url) { data in
                                switch data {
                                case .empty:
                                    ProgressView()
                                        .frame(width: 150, height: 200)
                                case .success(let image):
                                    image
                                        .resizable()
                                        .frame(width: 150, height: 200)
                                        .clipShape(.rect(cornerRadius: 10))
                                case .failure(_):
                                    Image("asdf")
                                        .frame(width: 150, height: 200)
                                        .background(.red)
                                @unknown default:
                                    Image("asdf")
                                        .frame(width: 150, height: 200)
                                        .background(.red)
                                }
                            }
                        }
                    }
                })
            }
            .scrollIndicators(.hidden, axes: .horizontal)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach($titles, id: \.self) { title in
                    sectionImages(title: title)
                }
            }
            .navigationTitle("My Random Image")
        }
    }
}

#Preview {
    RandomImageView()
}
