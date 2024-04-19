//
//  DetailView.swift
//  SwiftUIBasic
//
//  Created by SangRae Kim on 4/19/24.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var title: String
    
    var body: some View {
        TextField("변경할 섹션 제목을 입력해주세요.", text: $title)
    }
}
