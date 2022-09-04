//
//  Navigation Item.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 12/07/2022.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Color.clear
                .background(.ultraThinMaterial)
                .blur(radius: 5)
            
            HStack() {
                
                Text("TicTacToe")
                    .font(.largeTitle.weight(.heavy))
                    .frame(alignment: .leading)
                    .foregroundLinearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing)
                    .padding(.leading)
                
                Image("TicTacToe")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Rectangle()).cornerRadius(8)
                
                Spacer()
            }
        }
        .frame(height: 70)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct Navigation_Item_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
//            .preferredColorScheme(.dark)
    }
}
