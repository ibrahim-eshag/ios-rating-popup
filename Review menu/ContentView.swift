//
//  ContentView.swift
//  Review menu
//
//  Created by Ibrahim on 10/20/22.
//

import SwiftUI
import StoreKit

struct ContentView: View {
    
    @Environment(\.requestReview) var requestReview
    @State private var didCoolThingCounter = 0
    
    var body: some View {
        VStack {
            Text("\(didCoolThingCounter)")
                .font(.system(size: 200, weight: .heavy, design: .rounded))
            
            Button("Do cool thing"){
                didCoolThingCounter += 1
                
                if didCoolThingCounter == 20 {
                    requestReview()
                }
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.pink)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
