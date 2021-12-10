//
//  CardView.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 09/12/21.
//

import SwiftUI

struct CardView: View {
    @State var isActive: Bool = false
    
    let section: Section
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(section.title.uppercased())
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.gray)
            Text(section.description)
                .font(.system(size: 28, weight: .bold))
                .padding(.bottom, 16)
            ForEach(0..<4) { i in
                if i < courses.count {
                    ListItem(course: courses[i])
                }
            }
            HStack {
                Spacer()
                Text("See \(courses.count - 4) others")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
            }
            .padding(.top, 2)
            .padding(.bottom)
        }
        .padding(.horizontal, 32)
        .padding(.top, 16)
        .frame(width: UIScreen.main.bounds.width)
        .background(RoundedRectangle(cornerRadius: 16)
                        .frame(width: UIScreen.main.bounds.width - 32)
                        .foregroundColor(.white)
                        .shadow(color: .gray.opacity(0.5), radius: 16, x: 0, y: 0))
        .overlay {
            NavigationLink(destination: List {
                ForEach(0..<courses.count) { i in
                        ListItem(course: courses[i])
                }
            }.navigationTitle(section.title).navigationBarTitleDisplayMode(.large), isActive: $isActive) {}
        }.onTapGesture {
            isActive.toggle()
        }
    }
}
