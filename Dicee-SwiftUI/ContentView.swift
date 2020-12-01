//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Luis Vargas on 12/1/20.
//  Copyright © 2020 Luis Vargas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var leftDiceeNumber = 1
    @State private var rightDiceeNumber = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceeView(n: leftDiceeNumber)
                    DiceeView(n: rightDiceeNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.rightDiceeNumber = Int.random(in: 1...6)
                    self.leftDiceeNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                    
                }
                .background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceeView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
