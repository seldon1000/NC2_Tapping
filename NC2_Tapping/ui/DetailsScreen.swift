//
//  DetailsScreen.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 10/12/21.
//

import SwiftUI

struct DetailsScreen: View {
    var course: Course
    
    var body: some View {
        ScrollView {
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {}) {
                    Image(systemName: "star")
                }
            }
        }
    }
}
