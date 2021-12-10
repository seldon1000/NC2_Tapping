//
//  TappingTab.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 09/12/21.
//

import SwiftUI

struct TappingTab: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        ScrollView {
            ForEach(0..<sections.count) { i in
                CardView(section: sections[i])
                    .padding(.vertical)
            }
        }
        .navigationTitle("Tapping")
        .navigationBarTitleDisplayMode(.large)
        .sheet(isPresented: $isPresented) {
            NavigationView {
                ScrollView {
                    ForEach(0..<interests.count / 2) { i in
                        HStack(spacing: 16) {
                            InterestCard(interest: interests[2 * i])
                            InterestCard(interest: interests[2 * i + 1])
                        }
                    }
                }
                .navigationTitle("Your Interests")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: { isPresented.toggle() }) {
                            Text("Cancel")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: { isPresented.toggle() }) {
                            Text("Save")
                        }
                    }
                }
            }
        }
    }
}
