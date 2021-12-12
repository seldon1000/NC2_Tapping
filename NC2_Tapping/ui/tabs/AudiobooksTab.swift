//
//  AudiobooksTab.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 10/12/21.
//

import SwiftUI

struct AudiobooksTab: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Image("audiobooks")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: UIScreen.main.bounds.width)
            }
            .navigationTitle("Audiobooks")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    AccountButton()
                }
            }
        }
    }
}
