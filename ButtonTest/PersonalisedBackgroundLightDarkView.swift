//
//  PersonalisedBackgroundLightDarkView.swift
//  ButtonTest
//
//  Created by Elliot knight on 08/12/2021.
//

import SwiftUI

struct PersonalisedBackgroundLightDarkView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                    .fill(Color("AdaptiveColor"))
                    .frame(width: 370, height: 160)
            VStack {
                Text("Hello Dark Mode")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("AdaptiveColorText"))
                Text("The color is adapting his color from the ColorShceme !")
                    .italic()
                    .padding(.vertical, 1)
                    .multilineTextAlignment(.center)
                    
                Image(systemName: "guitars.fill" )
                    .font(.system(size: 40))
                    .foregroundColor(Color("AdaptiveColorText"))
            }
        }
    }
}


struct PersonalisedBackgroundLightDarkView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PersonalisedBackgroundLightDarkView()
            PersonalisedBackgroundLightDarkView()
                .preferredColorScheme(.dark)
        }
    }
}
