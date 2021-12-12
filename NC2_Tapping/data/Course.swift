//
//  Course.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 10/12/21.
//

import SwiftUI

class Course: Identifiable {
    let title: String
    let description: String
    let searchCategory: String
    let interest: String
    let time: String
    let cost: String
    let image: String
    
    init(title: String, description: String, searchCategory: String, interest: String, time: String, cost: String, image: String) {
        self.title = title
        self.description = description
        self.searchCategory = searchCategory
        self.interest = interest
        self.time = time
        self.cost = cost
        self.image = image
    }
}
