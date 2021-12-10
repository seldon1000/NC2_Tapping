//
//  Course.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 10/12/21.
//

import SwiftUI

class Course {
    let title: String
    let description: String
    let category: String
    let time: String
    let cost: String
    let image: String
    
    init(title: String, description: String, category: String, time: String, cost: String, image: String) {
        self.title = title
        self.description = description
        self.category = category
        self.time = time
        self.cost = cost
        self.image = image
    }
}
