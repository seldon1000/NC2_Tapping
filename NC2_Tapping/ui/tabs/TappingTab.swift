//
//  TappingTab.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 09/12/21.
//

import SwiftUI

struct TappingTab: View {
    var body: some View {
        ScrollView {
            ForEach(0..<sections.count) { i in
                CardView(section: sections[i])
                    .padding(.vertical)
            }
        }
    }
}
