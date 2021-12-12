//
//  SearchCategoryButton.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 12/12/21.
//

import SwiftUI

struct SearchCategoryButton: View {
    @Binding var searchedText: String
    
    let searchCategory: String
    
    var body: some View {
        Button(action: { searchedText = searchCategory }) {
            Text(searchCategory)
                .font(.system(size: 22))
                .foregroundColor(.blue)
        }
    }
}
