//
//  NC2_TappingApp.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 09/12/21.
//

import SwiftUI

@main
struct NC2_TappingApp: App {
    @State var searchedText: String = ""
    @State var isPresented: Bool = false
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TabView {
                    TappingTab(isPresented: $isPresented)
                        .tag(1)
                        .tabItem {
                            Label("Tapping", systemImage: "hand.tap")
                        }
                    DashboardTab()
                        .tag(2)
                        .tabItem {
                            Label("Dashboard", systemImage: "person.crop.square.filled.and.at.rectangle")
                        }
                    AudiobooksTab()
                        .tag(3)
                        .tabItem {
                            Label("Tapping", systemImage: "waveform")
                        }
                    ChallengesTab()
                        .tag(4)
                        .tabItem {
                            Label("Tapping", systemImage: "rectangle.grid.2x2")
                        }
                }
                .searchable(text: $searchedText, prompt: "Search")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: { isPresented.toggle() }) {
                            Image("rock")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 56, height: 56)
                        }
                    }
                }
            }
            .preferredColorScheme(.light)
        }
    }
}
