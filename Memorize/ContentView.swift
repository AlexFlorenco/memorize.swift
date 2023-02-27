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
            CardView()
            CardView()
            CardView()
            CardView()
        }
                .padding(.horizontal)
    }
}

struct CardView: View {
    @State var isVirado: Bool = false
    let card = RoundedRectangle(cornerRadius: 25.0)
    
    var body: some View{
            ZStack {
                if isVirado {
                card
                    .fill(.white)
                
                card
                    .stroke(lineWidth: 3)
                    .foregroundColor(.red)
                
                Text("🍎")
                    .font(.largeTitle)
            }
                else {
                    card
                        .fill(.red)
                }
            }
            .onTapGesture{
                isVirado = !isVirado
            }
        
    }
}







































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
