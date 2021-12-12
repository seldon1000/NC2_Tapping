//
//  TappingTab.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 09/12/21.
//

import SwiftUI

struct TappingTab: View {
    @Environment(\.isSearching) var isSearching
    
    @Binding var searchedText: String
    
    var body: some View {
        if isSearching {
            SearchScreen(searchedText: $searchedText)
        } else {
            ScrollView {
                ForEach(0..<sections.count) { i in
                    CardView(section: sections[i])
                        .padding(.bottom)
                }
                .padding(.vertical)
            }
        }
    }
}
