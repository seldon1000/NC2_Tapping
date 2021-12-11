//
//  InterestCard.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 10/12/21.
//

import SwiftUI

struct InterestCard: View {
    @State var isSelected: Bool = false
    
    var interest: Interest
    
    var body: some View {
        Button(action: {
            withAnimation {
                isSelected.toggle()
            }
        }) {
            ZStack {
                Image(interest.image)
                    .resizable()
                    .scaledToFill()
                VStack {
                    Spacer()
                    Text(interest.title)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 4, x: 0, y: 0)
                    if isSelected {
                        Image(systemName: "checkmark.circle.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.green)
                            .shadow(color: .black, radius: 8, x: 0, y: 0)
                    }
                }
                .padding(.bottom, 8)
            }
            .shadow(color: .gray.opacity(0.5), radius: 8, x: 0, y: 0)
            .frame(width: UIScreen.main.bounds.width / 2 - 24)
            .cornerRadius(8)
        }
        .buttonStyle(.plain)
    }
}
