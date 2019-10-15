//
//  Animal.swift
//  SwiftUI_TableView_Sample
//
//  Created by YOUNGSIC KIM on 2019-10-13.
//  Copyright © 2019 YOUNGSIC KIM. All rights reserved.
//

import Foundation

struct Animal: Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "_thumbnail"}
}

let testData = [
    Animal(name: "Bear", capacity: 7),
    Animal(name: "Bird", capacity: 6),
    Animal(name: "Cat", capacity: 4),
    Animal(name: "Dog", capacity: 12),
    Animal(name: "Kangaroo", capacity: 3),
    Animal(name: "Koala", capacity: 11),
    Animal(name: "Lion", capacity: 14),
    Animal(name: "Penguin", capacity: 5),
    Animal(name: "Rabbit", capacity: 7),
    Animal(name: "Tiger", capacity: 10),
]
