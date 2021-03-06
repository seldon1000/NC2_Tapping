//
//  SearchScreen.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 12/12/21.
//

import SwiftUI

struct SearchScreen: View {
    @Binding var searchedText: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(searchedText.isEmpty ? "Discover" : "Results")
                .font(.system(size: 22, weight: .bold))
                .padding(.horizontal)
            ZStack {
                List {
                    ForEach(0..<searchCategories.count) { i in
                        SearchCategoryButton(searchedText: $searchedText, searchCategory: searchCategories[i])
                    }
                }
                .listStyle(.plain)
                .hidden(!searchedText.isEmpty)
                List {
                    ForEach((courses.filter { it in it.title.lowercased().starts(with: searchedText.lowercased()) ||
                        it.title.lowercased().contains(searchedText.lowercased()) ||
                        it.interest.lowercased().starts(with: searchedText.lowercased()) ||
                        it.interest.lowercased().contains(searchedText.lowercased()) ||
                        it.searchCategory == searchedText
                    })) { course in
                        NavigationLink(destination: CourseDetailsScreen(course: course)) {
                            ListItem(course: course)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .listStyle(.plain)
                .hidden(searchedText.isEmpty)
            }
        }
    }
}

extension View {
    func hidden(_ shouldHide: Bool) -> some View {
        opacity(shouldHide ? 0 : 1)
    }
}
