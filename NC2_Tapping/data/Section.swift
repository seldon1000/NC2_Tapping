//
//  Category.swift
//  NC2_Tapping
//
//  Created by Nicolas Mariniello on 10/12/21.
//

class Section: Identifiable {
    let title: String
    let description: String
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
}
