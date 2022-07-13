//
//  Menu.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 13/07/2022.
//

import SwiftUI

struct Menu: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            Button {
                
                withAnimation {
                    show.toggle()
                }
            } label: {
                Image(systemName: "line.3.horizontal")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundColor(Color("play"))
                    .padding(.trailing,20)
            }
            
            if self.show {
                GeometryReader {_ in
                    
                    DropdownMenu()
                }
                .background(Color.black.opacity(0.65))
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    
                    withAnimation {
                        self.show.toggle()
                    }
                }
            }
        }
    }
}
struct DropdownMenu: View {
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "house")
                        .renderingMode(.original)
                        .frame(width: 38, height: 38)
                    
                    Text("Home")
                    
                }
            }
            
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "gearshape.fill")
                        .renderingMode(.original)
                        .frame(width: 38, height: 38)
                    
                    Text("Settings")
                    
                }
            }
            
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "bubble.left.and.exclamationmark.bubble.right")
                        .renderingMode(.original)
                        .frame(width: 38, height: 38)
                    
                    Text("About")
                }
            }
            
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .renderingMode(.original)
                        .frame(width: 38, height: 38)
                        .foregroundColor(.red)
                        .font(.system(size: 20, weight: .medium, design: .default))
                    
                    
                    Text("Restart")
                        .foregroundColor(.red)
                }
            }
            
        }
        .padding(.all)
        .frame(width: 180)
        .background(Color.white)
        .cornerRadius(15)
        .foregroundColor(Color("play"))
        .font(.system(size: 20, weight: .medium, design: .default))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
