//
//  InterestCard.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 10/12/21.
//

import SwiftUI

struct InterestCard: View {
    @State var isSelected: Bool = false
    
    @Binding var isChanged: Int
    
    var interest: Interest
    
    var body: some View {
        Button(action: {
            withAnimation {
                isSelected.toggle()
                if isSelected {
                    isChanged += 1
                } else if isChanged > 0 {
                    isChanged -= 1
                }
            }
        }) {
            ZStack {
                Image(interest.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width / 2 - 24, height: 96)
                VStack {
                    Spacer()
                    Text(interest.title)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white)
                    if isSelected {
                        Image(systemName: "checkmark.circle.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.green)
                    }
                }
                .shadow(color: .black, radius: 4, x: 0, y: 0)
                .padding(.bottom)
            }
            .cornerRadius(8)
            .shadow(radius: 4)
        }
        .buttonStyle(.plain)
    }
}
