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
        ZStack {
            ScrollView {
                ForEach(0..<sections.count) { i in
                    CardView(section: sections[i])
                        .padding(.bottom)
                }
                .padding(.vertical)
            }
            .hidden(isSearching)
            SearchScreen(searchedText: $searchedText)
                .hidden(!isSearching)
                .padding(.top, 48)
        }
    }
}

extension View {
    func hidden(_ shouldHide: Bool) -> some View {
        withAnimation {
            opacity(shouldHide ? 0 : 1)
        }
    }
}
