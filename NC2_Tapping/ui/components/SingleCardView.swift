//
//  SingleCardView.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 09/12/21.
//

import SwiftUI

struct SingleCardView: View {
    @State var isActive: Bool = false
    
    let course: Course = courses[Int.random(in: 0..<courses.count)]
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("FEATURED")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.gray)
                    .opacity(0.5)
                Text("Best deal of the day. Don't let it slip!")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
            }
            .padding([.horizontal, .top])
            .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.width - 32)
            .background(Image(course.image)
                        .resizable()
                            .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width - 32, height: UIScreen.main.bounds.width - 32)
                            .cornerRadius(16, corners: [.topLeft, .topRight]))
            ListItem(course: course)
                .padding(.top, 6)
                .padding([.horizontal, .bottom])
        }
        .padding(.horizontal, 32)
        .background(Color.white
                        .cornerRadius(16)
                        .frame(width: UIScreen.main.bounds.width - 32)
                        .shadow(color: .gray.opacity(0.4), radius: 16, x: 0, y: 0))
        .overlay {
            NavigationLink(destination: CourseDetailsScreen(course: course)
                            .navigationTitle(course.title)
                            .navigationBarTitleDisplayMode(.inline)
                            .listStyle(.plain), isActive: $isActive) {}
        }
        .onTapGesture {
            isActive.toggle()
        }
    }
}
