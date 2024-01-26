//
//  RecipeModel.swift
//  Avocados
//
//  Created by Nicolai Bodean on 26.01.2024.
//

import SwiftUI

 //Mark - Recipe model

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
