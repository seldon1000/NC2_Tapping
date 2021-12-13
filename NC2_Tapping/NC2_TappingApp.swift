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
    
    var body: some Scene {
        WindowGroup {
            TabView() {
                TappingTab(searchedText: $searchedText)
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
                        Label("Audiobooks", systemImage: "waveform")
                    }
                ChallengesTab()
                    .tag(4)
                    .tabItem {
                        Label("Challenges", systemImage: "rectangle.grid.2x2")
                    }
            }
            .searchable(text: $searchedText, prompt: "Search Courses, Meditations & More")
            .preferredColorScheme(.light)
        }
    }
}
