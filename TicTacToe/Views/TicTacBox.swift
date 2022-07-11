//
//  TicTacBox.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 18/05/2022.
//

import SwiftUI



struct TicTacBox: View {
    
    @State var moves: [String] = Array(repeating: "", count: 9) //Moves...
    @State var isPlaying = true
    @State var gameIsOver = true
    
    var body: some View {
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 3)) {
                
                ForEach(0..<9, id: \.self) { index in
                    
                    ZStack {
                        
                        Color.white
                        
                        // the indexpath for lazy grid corresponds to moves index
                        Text(moves[index])
                            .font(.system(size: 55))
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                    }
                    .frame(width: getWidth(), height: getWidth())
                    .cornerRadius(15)
                    .onTapGesture(perform: {
                        
                        withAnimation(Animation.easeIn(duration: 0.5)) {
//                            only play on empty cell
                            if moves[index] == "" {
                                moves[index] = isPlaying ? "X" : "O"
                                //update Player
                                isPlaying.toggle()
                            }
                        }
                    })
                }
            }
        }
        .padding()
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func getWidth() -> CGFloat { //width of Grids
        // horizontal padding = 15 * 2 (trailing and leading)
        // spacing  = 15 in between 2 boxes
        
        let width = UIScreen.main.bounds.width - (30 + 30)
        
        return width / 3
    }
    
}

struct TicTacBox_Previews: PreviewProvider {
    static var previews: some View {
        TicTacBox()
            .preferredColorScheme(.dark)
    }
}
