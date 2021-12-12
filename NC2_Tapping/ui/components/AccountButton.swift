//
//  AccountButton.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 12/12/21.
//

import SwiftUI

struct AccountButton: View {
    @State var isPresented: Bool = false
    
    var body: some View {
        Button(action: { isPresented.toggle() }) {
            Image("rock")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 52, height: 52)
                .shadow(color: .gray.opacity(0.4), radius: 16, x: 0, y: 0)
        }
        .sheet(isPresented: $isPresented) {
            InterestsSheet(isPresented: $isPresented)
        }
    }
}
