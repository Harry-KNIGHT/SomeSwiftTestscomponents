//
//  ListView.swift
//  ButtonTest
//
//  Created by Elliot knight on 08/12/2021.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack {
            List {
                Text("Elliot")
                Text("Knight")
                
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListView()
            ListView()
                .preferredColorScheme(.dark)
        }
    }
}
