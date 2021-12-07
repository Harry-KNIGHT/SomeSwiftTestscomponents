//
//  DarkModButtonView.swift
//  ButtonTest
//
//  Created by Elliot knight on 07/12/2021.
//

import SwiftUI

struct DarkModeToggleView: View {
    
    @State private var isDarkMode: Bool = false

    var body: some View {
        VStack {
            Image(systemName: isDarkMode ? "lightbulb.fill" : "lightbulb.slash")
                .font(.system(size: 150))

            Toggle(isOn: $isDarkMode, label: {
                Text("Label")
            }).labelsHidden()
            
            Text(isDarkMode ? "Hey, it is the day !" : "Night isn't dark as it, what happend ?")
                .bold()
                .padding()
            
        }.preferredColorScheme(isDarkMode ? .light : .dark)
    }
}



struct DarkModToggleView_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeToggleView()
    }
}
