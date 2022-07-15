//
//  AboutView.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 15/07/2022.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("Hello! I am Roy")
                .font(.system(size: 50, weight: .bold, design: .rounded))
                .padding(.bottom, 50)
            
            
            Button {
                print("about")
            } label: {
                Image(systemName: "heart.fill")
                    .font(.system(size: 70, weight: .heavy, design: .rounded))
                    .foregroundColor(Color("play"))
            }
            .padding(.bottom, 20)
//            .rotation3DEffect(.init(degrees: 180),
//                            axis: (x: 0.0, y: 1.0, z: 0.0),
//                            anchor: .center,
//                            anchorZ: 0.0,
//                            perspective: 1.0)
//            .onTapGesture {
//            }
//
            Button {
                print("about")
            } label: {
                Image(systemName: "heart.fill")
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                    .foregroundColor(Color("play"))
            }
            .padding(.bottom, 20)
            
            
            Image("about")
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            HStack {
                Text("Connect with me")
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                
                Image(systemName: "cup.and.saucer.fill")
                    .foregroundColor(Color("play"))
            }
            
            HStack {
                
                Image("twitter")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .center)
                    .padding(.trailing)
                
                Image("github")
                    .resizable()
                    .frame(width: 37, height: 37, alignment: .center)
                    .padding(.leading)
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
