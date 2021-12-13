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
                    .padding(.horizontal)
                    .padding(.top)
                    .hidden(!isSearching)
                ScrollView {
                    ForEach(0..<sections.count) { i in
                        if i == 1 {
                            SingleCardView()
                                .padding(.bottom)
                        }
                        ListCardView(section: sections[i])
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
