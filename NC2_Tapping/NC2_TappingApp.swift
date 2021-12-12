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
    @State var selectedTab: Int = 1
    
    func getNavigationTitle() -> String {
        switch selectedTab {
        case 1: return "Tapping"
        case 2: return "Dashboard"
        case 3: return "Audiobooks"
        case 4: return "Challenges"
        default: return ""
        }
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TabView(selection: $selectedTab) {
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
                .navigationTitle(getNavigationTitle())
                .navigationBarTitleDisplayMode(.large)
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
                .sheet(isPresented: $isPresented) {
                    InterestsSheet(isPresented: $isPresented)
                }
            }
            .preferredColorScheme(.light)
        }
    }
}
