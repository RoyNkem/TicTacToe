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
                VStack(spacing: 100) {
                    
                    LoadingView()
                                    
                    Button {
                        isContentViewPresented.toggle()
                    } label: {
                        Image(systemName: "play.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: 80, height: 80)
                            .background(Color("play"))
                            .cornerRadius(40)
                            .shadow(color: Color("Color").opacity(0.3), radius: 1, x: 0, y: 1)
                        
                    }
                }
                .offset(y: 60)
        } // presents modal view that covers screen when binding is true
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background2"))
        .fullScreenCover(isPresented: $isContentViewPresented) {
            LoginView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
