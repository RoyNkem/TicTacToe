//
//  ContentView.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 18/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                TicTacBox()
            }
            
            PlayersCard()
        }
        .background(Color("play").opacity(0.6))
        .background(LinearGradient(gradient: .init(colors: [Color("purple1"), Color("purple2")]), startPoint: .topTrailing, endPoint: .bottomLeading))
        .overlay(
            
            NavigationBar()
            
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)
    }
}
