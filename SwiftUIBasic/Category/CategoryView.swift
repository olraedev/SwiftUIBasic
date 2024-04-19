//
//  CategoryView.swift
//  SwiftUIBasic
//
//  Created by SangRae Kim on 4/19/24.
//

import SwiftUI

struct Category: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let count: Int
}

struct CategoryView: View {
    
    let item = ["SF", "가족", "스릴러"]
    
    @State var category: [Category] = []
    @State private var query = ""
    
    var filterCategory: [Category] {
        return query.isEmpty ? category : category.filter {
            $0.name.contains(query)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filterCategory, id: \.self) { value in
                    HStack {
                        Image(systemName: "star.fill")
                        Text("\(value.name) (\(value.count))")
                    }
                }
            }
            .navigationTitle("영화 검색")
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("추가") {
                        category.append(
                            Category(name: item.randomElement()!, count: .random(in: 1...100))
                        )
                    }
                }
            }
            .searchable(
                text: $query,
                placement: .navigationBarDrawer,
                prompt: "검색하세요.")
        }
    }
}

#Preview {
    CategoryView()
}
