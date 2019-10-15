//
//  ContentView.swift
//  SwiftUI_TableView_Sample
//
//  Created by YOUNGSIC KIM on 2019-10-13.
//  Copyright © 2019 YOUNGSIC KIM. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var animals:[Animal] = []
    var body: some View {
        NavigationView {
            List(animals) { animal in
                AnimalCell(animal: animal)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(animals: testData)
            ContentView(animals: testData)
                .environment(\.colorScheme, .dark)
            ContentView(animals: testData)
                .environment(\.sizeCategory, .extraExtraExtraLarge)
        }
    }
}

struct AnimalCell: View {
    let animal: Animal
    var body: some View {
        NavigationLink(destination:DetailView(animal: animal)) {
            Image(animal.thumbnailName)
                .cornerRadius(8)
            VStack (alignment: .leading){
                Text(animal.name)
                Text("Number: \(animal.capacity)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }.navigationBarTitle("Animals")
    }
}
