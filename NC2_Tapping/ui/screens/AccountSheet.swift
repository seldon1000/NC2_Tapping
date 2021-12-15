//
//  AccountSheet.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 11/12/21.
//

import SwiftUI

struct AccountSheet: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: InterestsScreen(isPresented: $isPresented)) {
                    HStack {
                        Image(systemName: "pencil")
                            .font(.system(size: 22))
                            .foregroundColor(.blue)
                        Text("Modify Interests")
                    }
                }
            }
            .navigationTitle("The Rock")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { isPresented.toggle() }) {
                        Text("Close")
                    }
                }
            }
        }
    }
}
