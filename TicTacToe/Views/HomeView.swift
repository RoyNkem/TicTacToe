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
                Text("Play Game")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(width: 300, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    
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
