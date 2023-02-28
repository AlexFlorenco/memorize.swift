//
//  ContentView.swift
//  Memorize
//
//  Created by Alexandre Florenço on 26/02/23.
//

import SwiftUI

struct ContentView: View {
    var arrayEmojis = ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐻‍❄️", "🐨", "🐯", "🦁", "🐮", "🐷", "🐸", "🐵", "🐔", "🐙", "🐠", "🐲", "🐧", "🐴", "🦆", "🦋", "🐝", "🦀", "🐍", "🐢"]
    @State var countEmojis = 28
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach (arrayEmojis[0..<countEmojis], id: \.self){ emoji in
                        CardView(conteudo: emoji)
                            .aspectRatio(2/2, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack{
                remove
                Spacer()
                add
            }
            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    var add: some View{
        Button{
                if countEmojis < arrayEmojis.count{
                    countEmojis += 1
                }
            }
            label: {
                    Image(systemName: "plus.circle")
            }
    }
    
    var remove: some View{
        Button {
            if countEmojis > 1{
                countEmojis -= 1
            }
        }
        label: {
            Image(systemName: "minus.circle")
        }
    }
}

struct CardView: View {
    var conteudo: String
    @State var isVirado: Bool = false
    
    var body: some View {
        ZStack {
            let card = RoundedRectangle(cornerRadius: 20)
                
            if isVirado {
                card
                    .fill()
                    .foregroundColor(.white)
                card
                    .strokeBorder(lineWidth: 3)
                Text(conteudo)
                    .font(.largeTitle)
            }
            else {
                card
                    .fill()
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
