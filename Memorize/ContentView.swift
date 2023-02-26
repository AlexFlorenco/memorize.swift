//
//  ContentView.swift
//  Memorize
//
//  Created by Alexandre Florenço on 26/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Card()
            Card()
            Card()
            Card()
        }
                .padding(.horizontal)
    }
}

struct Card: View {
    var isVirado: Bool = false
    var backgroundCard = RoundedRectangle(cornerRadius: 25.0)
    
    var body: some View{
        if isVirado {
            ZStack {
                backgroundCard
                    .fill(.white)
                
                backgroundCard
                    .stroke(lineWidth: 3)
                    .foregroundColor(.red)
                
                Text("🍎")
                    .font(.largeTitle)
            }
        }
        
        else {
            backgroundCard
                .fill(.red)
        }
    }
}







































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
