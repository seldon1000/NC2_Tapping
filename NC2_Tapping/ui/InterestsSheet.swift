//
//  InterestsSheet.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 11/12/21.
//

import SwiftUI

struct InterestsSheet: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0..<(interests.count % 2 == 0 ? interests.count / 2 : interests.count / 2 + 1)) { i in
                    HStack(spacing: 16) {
                        InterestCard(interest: interests[2 * i])
                        if 2 * i + 1 < interests.count {
                            InterestCard(interest: interests[2 * i + 1])
                        } else {
                            Spacer()
                        }
                    }
                    .padding(.bottom, 8)
                    .padding(.horizontal)
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
