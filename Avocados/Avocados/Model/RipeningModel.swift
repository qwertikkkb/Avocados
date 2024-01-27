//
//  RipeningModel.swift
//  Avocados
//
//  Created by Nicolai Bodean on 27.01.2024.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
