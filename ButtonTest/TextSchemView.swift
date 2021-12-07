//
//  TextSchemView.swift
//  ButtonTest
//
//  Created by Elliot knight on 07/12/2021.
//

import SwiftUI

struct TextSchemView: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text("Label")
            }).toggleStyle(SwitchToggleStyle(tint: Color.accentColor))
                .labelsHidden()
            Text(isOn ? "Écriture de jour" : "Écriture de nuit")
        }.preferredColorScheme(isOn ? .light : .dark)
    }
}

struct TextSchemView_Previews: PreviewProvider {
    static var previews: some View {
        TextSchemView()
    }
}
