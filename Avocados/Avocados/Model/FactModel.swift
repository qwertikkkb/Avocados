//
//  FactModel.swift
//  Avocados
//
//  Created by Nicolai Bodean on 26.01.2024.
//

import SwiftUI

 //Mark - Fact Model

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
