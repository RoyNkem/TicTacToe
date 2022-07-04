//
//  PlayersCard.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 18/05/2022.
//

import SwiftUI

struct PlayersCard: View {
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "x.square.fill")
                    .resizable()
                    .symbolVariant(.fill)
                    .frame(width: 40, height: 40)
                    .font(.title)
                
                VStack {
                    Text("PLAYER 1")
                        .bold()
                    
                    Text("Roy")
                        .bold()
                        .font(.title)
                        .foregroundColor(.purple)
                }
            }
            .padding(.leading, -15)
            
            Spacer()
            
            Divider()
            
            Spacer()
            
            HStack {
                VStack {
                    Text("PLAYER 2")
                        .bold()
                    
                    Text("Praise")
                        .bold()
                        .font(.title)
                        .foregroundColor(.orange)
                }
                
                Image(systemName: "o.square.fill")
                    .resizable()
                    .symbolVariant(.fill)
                    .frame(width: 40, height: 40)
                    .font(.title)
            }
            .padding(.trailing, -15)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 70)
        .background(.ultraThickMaterial, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

struct PlayersCard_Previews: PreviewProvider {
    static var previews: some View {
        PlayersCard()
    }
}
