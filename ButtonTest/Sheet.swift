//
//  MailsView.swift
//  ButtonTest
//
//  Created by Elliot knight on 10/12/2021.
//

import SwiftUI

struct SheetView: View {
    
    @State private var isShowingSheet: Bool = false
    
    var body: some View {
        Button(action: { isShowingSheet.toggle()
        }) {
            Text("Show licence agreement")
        }
        .sheet(isPresented: $isShowingSheet, onDismiss: didDissmis) {
            VStack(alignment: .center, spacing: 50) {
                Text("Licence agreement")
                    .font(.title)
                    .foregroundColor(.black)
                Text("Read the licence")
                Button("Dismiss",
                       action:
                        { isShowingSheet.toggle()
                })
            }
        }
    }
    
    func didDissmis() {
        
    }
    
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
