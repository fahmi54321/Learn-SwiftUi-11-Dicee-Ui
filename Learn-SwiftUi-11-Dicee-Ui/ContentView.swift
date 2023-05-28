//
//  ContentView.swift
//  Learn-SwiftUi-11-Dicee-Ui
//
//  Created by Fahmi Aziz on 21/04/23.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }.padding(.horizontal)
                Spacer()
                Button("Roll") {
                    
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                }.font(
                    .system(size: 50.0)
                ).fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .background(.red)
                Spacer()

            }
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1,contentMode: .fit).padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


