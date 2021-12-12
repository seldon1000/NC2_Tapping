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
            Text("Discover")
                .font(.system(size: 24, weight: .bold))
                .padding(.horizontal)
            List {
                Button(action: { searchedText = "beginner" }) {
                    Text("beginner")
                        .font(.system(size: 24))
                        .foregroundColor(.blue)
                }
                Button(action: { searchedText = "anxiety" }) {
                    Text("anxiety")
                        .font(.system(size: 24))
                        .foregroundColor(.blue)
                }
                Button(action: { searchedText = "sleep" }) {
                    Text("sleep")
                        .font(.system(size: 24))
                        .foregroundColor(.blue)
                }
                Button(action: { searchedText = "morning" }) {
                    Text("morning")
                        .font(.system(size: 24))
                        .foregroundColor(.blue)
                }
                Button(action: { searchedText = "pain" }) {
                    Text("pain")
                        .font(.system(size: 24))
                        .foregroundColor(.blue)
                }
                Button(action: { searchedText = "fear" }) {
                    Text("fear")
                        .font(.system(size: 24))
                        .foregroundColor(.blue)
                }
                Button(action: { searchedText = "energy" }) {
                    Text("energy")
                        .font(.system(size: 24))
                        .foregroundColor(.blue)
                }
                Button(action: { searchedText = "anger" }) {
                    Text("anger")
                        .font(.system(size: 24))
                        .foregroundColor(.blue)
                }
            }
            .listStyle(.plain)
        }
    }
}
