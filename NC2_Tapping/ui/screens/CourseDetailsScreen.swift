//
//  DetailsScreen.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 10/12/21.
//

import SwiftUI

struct CourseDetailsScreen: View {
    @State var isFavorite: Bool = false
    @State var isOn: Bool = false
    @State var isPresented: Bool = false
    
    var course: Course
    
    private func getScrollOffset(_ geometry: GeometryProxy) -> CGFloat {
        geometry.frame(in: .global).minY
    }
    
    private func getOffsetForHeaderImage(_ geometry: GeometryProxy) -> CGFloat {
        let offset = getScrollOffset(geometry)
        
        if offset > 0 {
            return -offset
        }
        
        return 0
    }
    
    private func getHeightForHeaderImage(_ geometry: GeometryProxy) -> CGFloat {
        let offset = getScrollOffset(geometry)
        let imageHeight = geometry.size.height
        
        if offset > 0 {
            return imageHeight + offset
        }
        
        return imageHeight
    }
    
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                Image(course.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: self.getHeightForHeaderImage(geometry))
                    .overlay {
                        LinearGradient(colors: [.white, .clear], startPoint: .top, endPoint: .center)
                    }
                    .offset(x: 0, y: self.getOffsetForHeaderImage(geometry))
            }
            .frame(height: UIScreen.main.bounds.height / 3)
            VStack(spacing: 16) {
                HStack(alignment: .top) {
                    Image("rock")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 112, height: 112)
                    VStack(alignment: .leading) {
                        Text("The Rock")
                            .font(.system(size: 20, weight: .bold))
                        Text(course.interest)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.gray)
                        Text("\(course.time) mins")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.gray)
                        Spacer()
                        HStack(alignment: .top) {
                            VStack(spacing: 4) {
                                Button(action: { isPresented.toggle() }) {
                                    Text("PLAY")
                                        .font(.system(size: 14, weight: .bold))
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 18)
                                        .padding(.vertical, 6)
                                        .background(.blue)
                                        .cornerRadius(32)
                                }
                                Text(course.cost)
                                    .font(.system(size: 10))
                                    .foregroundColor(.gray)
                            }
                            Button(action: { isPresented.toggle() }) {
                                Image(systemName: "arrow.down")
                                    .font(.system(size: 14, weight: .bold))
                                    .foregroundColor(.gray)
                                    .padding(.horizontal, 18)
                                    .padding(.vertical, 6)
                                    .background(.gray.opacity(0.2))
                                    .clipShape(Circle())
                            }
                            Spacer()
                            Button(action: { isPresented.toggle() }) {
                                Image(systemName: "square.and.arrow.up")
                                    .font(.system(size: 24))
                            }
                        }
                    }
                    .padding(.leading, 8)
                }
                Divider()
                Text(course.description)
                    .font(.system(size: 16))
                Divider()
                HStack {
                    Image(systemName: "star.slash.fill")
                        .font(.system(size: 24))
                        .foregroundColor(.yellow)
                    Toggle("Skip Rating", isOn: $isOn)
                }
            }
            .padding(.top, 8)
            .padding(.horizontal)
        }
        .navigationTitle(course.title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    withAnimation {
                        isFavorite.toggle()
                    }
                }) {
                    Image(systemName: isFavorite ? "star.fill" : "star")
                }
            }
        }
        .ignoresSafeArea(.all, edges: .top)
        .alert("Not Yet Implemented", isPresented: $isPresented) {
            Text("OK")
        }
    }
}
