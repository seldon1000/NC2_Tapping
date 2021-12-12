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
        NavigationView {
            ZStack {
                SearchScreen(searchedText: $searchedText)
                    .hidden(!isSearching)
                ScrollView {
                    ForEach(0..<sections.count) { i in
                        CardView(section: sections[i])
                            .padding(.bottom)
                    }
                    .padding(.vertical)
                }
                .hidden(isSearching)
            }
            .navigationTitle("Tapping")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    AccountButton()
                }
            }
        }
    }
}
