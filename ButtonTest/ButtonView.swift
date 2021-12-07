//
//  ButtonView.swift
//  ButtonTest
//
//  Created by Elliot knight on 07/12/2021.
//

import SwiftUI

struct ButtonView: View {
    
    //    @State var changingColor: Bool = false
    @State private var pourcentage = 0.5
    var actions = "Incrémenter"
    
    var body: some View {
        VStack {
            Text("\(Int(pourcentage * 100))%")
            Button(actions) {
                self.pourcentage += 0.01
            }
            Slider(value: $pourcentage, in: 0...1)
                .padding()
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

