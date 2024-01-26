//
//  HeaderModel.swift
//  Avocados
//
//  Created by Nicolai Bodean on 26.01.2024.
//

import SwiftUI

 //Mark - HEader Model

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
