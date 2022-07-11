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
                        //Flip Animation
                        Color.blue
//The color white is stacked on blue. When the cell is empty, make white show, else make cell blue. Achieve this with Opacity:
                        Color.white
                            .opacity(moves[index] == "" ? 1 : 0)
                        
                        // the indexpath for lazy grid corresponds to moves index
                        Text(moves[index])
                            .font(.system(size: 55))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
// if there is text after tap, let the cell
                            .opacity(moves[index] != "" ? 1 : 0)
                    }
                    .frame(width: getWidth(), height: getWidth())
                    .cornerRadius(15)
                    .rotation3DEffect(.init(degrees: moves[index] != "" ? 180 : 0),
                                      axis: (x: 0.0, y: 1.0, z: 0.0),
                                      anchor: .center,
                                      anchorZ: 0.0,
                                      perspective: 1.0)
                    .onTapGesture(perform: {
                        
                        withAnimation(Animation.easeIn(duration: 0.5)) {
// only play on empty cell
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
