//
//  ListItem.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 09/12/21.
//

import SwiftUI

struct ListItem: View {
    @State var isActive: Bool = false
    
    let course: Course
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(course.image)
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .cornerRadius(8)
                .shadow(radius: 8)
            VStack(alignment: .leading) {
                Text(course.title)
                    .font(.system(size: 16, weight: .semibold))
                    .lineLimit(2)
                Text(course.description)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
            VStack(spacing: 4) {
                Text("")
                    .font(.system(size: 10))
                Button(action: {}) {
                    Text("PLAY")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.blue)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 6)
                        .background(.gray.opacity(0.2))
                        .cornerRadius(32)
                }
                Text(course.cost)
                    .font(.system(size: 10))
                    .foregroundColor(.gray)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 64)
        .overlay {
            NavigationLink(destination: DetailsScreen(course: course), isActive: $isActive) {}
        }.onTapGesture {
            isActive.toggle()
        }
    }
}
