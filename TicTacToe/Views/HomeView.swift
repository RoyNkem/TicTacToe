//
//  HomeView.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 11/07/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State var isContentViewPresented = false
    
    var body: some View {
        ZStack {
            Button {
                isContentViewPresented.toggle()
            } label: {
                Image(systemName: "play.fill")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: 80, height: 80)
                    .background(Color("play"))
                    .cornerRadius(40)
                
            }
        } // presents modal view that covers screen when binding is true
        .fullScreenCover(isPresented: $isContentViewPresented) {
            ContentView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
