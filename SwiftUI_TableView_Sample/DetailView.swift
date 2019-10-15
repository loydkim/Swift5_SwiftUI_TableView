//
//  DetailView.swift
//  SwiftUI_TableView_Sample
//
//  Created by YOUNGSIC KIM on 2019-10-13.
//  Copyright © 2019 YOUNGSIC KIM. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let animal:Animal
    @State private var zoomed = false
    var body: some View {
        ZStack (alignment:.topLeading){
            Image(animal.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill:.fit)
                .navigationBarTitle(Text("\(animal.name) ( \(animal.capacity) )"), displayMode:.inline)
                .frame(minWidth:0, maxWidth: .infinity, minHeight:0 , maxHeight: .infinity)
                .onTapGesture {
                    withAnimation { self.zoomed.toggle() }
            }
            if !zoomed {
                Text("Touch The Image")
                    .font(.title)
                    .padding(.all)
                    .transition(.move(edge: .leading))
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { DetailView(animal: testData[0]) }
    }
}
