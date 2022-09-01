//
//  AlertView.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 30/08/2022.
//

import SwiftUI

struct AlertView: View {
    @State private var show: Bool = false
//    let outcome: Outcome
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
            
            VStack(spacing: 20) {
                
                Image("trophy")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("Congratulations")
                    .font(.title2).bold()
                
                Text("You Win!")
                
                GeometryReader { proxy in
                    
                    HStack {
                        Button(action: {
                            
                        }) {
                            Text("Home")
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: proxy.size.width/2)
                                .background(Color.blue)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                        }
                        .shadow(radius: 3)
                        
                        Button(action: {
                            
                        }) {
                            Text("Share")
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: proxy.size.width/2)
                                .background(Color.green)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                            
                        }
                        .shadow(radius: 3)

                    }
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: proxy.size.height)
                }
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 25)
            .background(LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.4), .orange.opacity(0.5)]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .shadow(radius: 20)
            
            Button(action:{
                show.toggle()
            }) {
                Image(systemName: "xmark.circle")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundLinearGradient(colors: [.blue, .orange], startPoint: .leading, endPoint: .trailing)
            }
            .offset(x: -20, y: 20)
        }
        .frame(maxHeight: 400)
        .padding()
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
//            .preferredColorScheme(.dark)
    }
}
