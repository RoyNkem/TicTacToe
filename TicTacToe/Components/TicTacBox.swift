//
//  TicTacBox.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 18/05/2022.
//

import SwiftUI

struct TicTacBox: View {
    
    var columns: [GridItem] = Array(repeating: GridItem(.flexible(), spacing: 15), count: 3)
    @State var moves: [String] = Array(repeating: "", count: 9) //Moves...
    @State var isPlaying = true //The current player
    @State var gameIsOver = false
    @State var msg = ""
    
    //MARK: - Grid Cell
    var body: some View {
        VStack {
            LazyVGrid(columns: columns) {
                
                ForEach(0..<9, id: \.self) { index in
                    
                    ZStack {
                        //Flip Animation with color when player taps
                        Color("play")
                        //The color white is stacked on blue. When the cell is empty, make white show, else make cell blue. Achieve this with Opacity:
                        Color("cell")
                            .opacity(moves[index] == "" ? 1 : 0)
                        
                        // the indexpath for lazy grid corresponds to moves index
                        Text(moves[index])
                            .font(.system(size: 55))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        // if user tap cell with that has been tapped before
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
            }// when value of moves change (i.e "x" or "o") It will check for winner
            .onChange(of: moves) { winner in
                checkWinner()
            }
            .alert(isPresented: $gameIsOver) {
                Alert(title: Text("Winner"), message: Text(msg), dismissButton: .destructive(Text("Play Again"), action: {
                    
                    // reset all data
                    withAnimation(Animation.easeIn(duration: 0.5)) {
                        moves.removeAll()
                        moves = Array(repeating: "", count: 9)
                        isPlaying = true
                    }
                }))
            }
        }
        .padding()
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
        .frame(maxHeight: .infinity)
        
    }
    
    
    //MARK: - Grid Cell Width
    func getWidth() -> CGFloat { //width of Grids
        // horizontal padding = 15 * 2 (trailing and leading)
        // spacing  = 15 in between 2 boxes
        
        let width = UIScreen.main.bounds.width - (30 + 30)
        
        return width / 3
    }
    
    //MARK: - Check Winner
    func checkWinner() {
        if checkMoves(player: "X") == true {
            msg = "Player X won"
            gameIsOver.toggle()
        }
        
        else if checkMoves(player: "O") == true {
            msg = "Player O won"
            gameIsOver.toggle()
        }
        // checking No Winner
        else { // check if there are any empty cell with no text(X or O) in moves
            let cellStatus = moves.contains { value in
                return value == ""
            }
            
            if !cellStatus { //false(moves does not contain empty cell)
                msg = "Game Over Tied"
                gameIsOver.toggle()
            }
        }
        
    }
    
    //MARK: - Check Matching Moves
    func checkMoves(player: String) -> Bool {
        //Horizontal Win
        for i in stride(from: 0, to: 9, by: 3) {// return sequence steopped by 3 i.e 0,3,6,
            
            if moves[i] == player && moves[i + 1] == player && moves[i + 2] == player {
                return true
            }
        }
        
        //Vertical Win
        for i in 0...2 {
            
            if moves[i] == player && moves[i + 3] == player && moves[i + 6] == player {
                return true
            }
        }
        
        //Diagonal Win
        if moves[0] == player && moves[4] == player && moves[8] == player {
            return true
        }
        if moves[2] == player && moves[4] == player && moves[6] == player {
            return true
        }
        
        return false // default
    }
}

//MARK: - PREVIEW
struct TicTacBox_Previews: PreviewProvider {
    static var previews: some View {
        TicTacBox()
            .preferredColorScheme(.light)
    }
}
