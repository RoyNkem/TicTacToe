//
//  LoginView.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 04/09/2022.
//

import SwiftUI

struct LoginView: View {
    @State var index = 0
    
    var body: some View{
        
        GeometryReader{_ in
            
            VStack{
                
                HStack() {
                    
                    Text("TicTacToe")
                        .font(.largeTitle.weight(.heavy))
                        .frame(alignment: .leading)
                        .foregroundLinearGradient(colors: [.blue, .green], startPoint: .leading, endPoint: .trailing)
                        .padding(.leading)
                    
                    Image("TicTacToe")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Rectangle()).cornerRadius(5)
                }
                .padding(.vertical)
                .shadow(color: Color("Background"), radius: 0.3, x: 0.5, y: 2)
                .offset(x:-15)
                
                
                ZStack{
                    
                    SignUp(index: self.$index)
                        // changing overlapping view order...
                        .zIndex(Double(self.index))
                    
                    Login(index: self.$index)

                }
                
                HStack(spacing: 15){
                    
                    Rectangle()
                    .fill(Color("play"))
                    .frame(height: 1)
                    
                    Text("OR")
                    
                    Rectangle()
                    .fill(Color("play"))
                    .frame(height: 1)
                }
                .padding(.horizontal, 30)
                .padding(.top, 50)
                // because login button is moved 25 in y axis and 25 padding = 50
                
                HStack(spacing: 50){
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("twitter")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("github")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                }
                .padding(.top, 30)
            }
            .padding(.vertical)
        }
        .background(Color("Background2").edgesIgnoringSafeArea(.all))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .preferredColorScheme(.dark)
    }
}
