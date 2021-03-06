//
//  ListItem.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 09/12/21.
//

import SwiftUI

struct ListItem: View {
    @State var isPresented: Bool = false
    
    let course: Course
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(course.image)
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .cornerRadius(8)
                .shadow(color: .gray.opacity(0.4), radius: 8, x: 0, y: 0)
            VStack(alignment: .leading) {
                Text(course.title)
                    .font(.system(size: 16, weight: .semibold))
                    .lineLimit(2)
                Text(course.description)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            VStack(spacing: 4) {
                Spacer()
                Button(action: { isPresented.toggle() }) {
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
        .alert("Not Yet Implemented", isPresented: $isPresented) {
            Text("OK")
        }
    }
}
