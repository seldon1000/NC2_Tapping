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
        }
        .sheet(isPresented: $isPresented) {
            AccountSheet(isPresented: $isPresented)
        }
    }
}
