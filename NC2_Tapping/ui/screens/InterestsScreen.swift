//
//  InterestsScreen.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 15/12/21.
//

import SwiftUI

struct InterestsScreen: View {
    @State var isChanged: Int = 0
    
    @Binding var isPresented: Bool
    
    var body: some View {
        ScrollView {
            ForEach(0..<(interests.count % 2 == 0 ? interests.count / 2 : interests.count / 2 + 1)) { i in
                HStack(spacing: 16) {
                    InterestCard(isChanged: $isChanged, interest: interests[2 * i])
                    if 2 * i + 1 < interests.count {
                        InterestCard(isChanged: $isChanged, interest: interests[2 * i + 1])
                    } else {
                        Spacer()
                    }
                }
                .padding(.bottom, 8)
                .padding(.horizontal)
            }
        }
        .navigationTitle("Your Interests")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(isChanged > 0)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                if isChanged > 0 {
                    Button(action: { isChanged = 0 }) {
                        Text("Cancel")
                    }
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { isPresented.toggle() }) {
                    Text("Save")
                }
                .disabled(isChanged == 0)
            }
        }
    }
}
