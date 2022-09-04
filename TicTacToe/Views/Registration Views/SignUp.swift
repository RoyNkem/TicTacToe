//
//  SignUp.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 04/09/2022.
//

import SwiftUI

struct SignUp: View {
    @State var email = ""
    @State var password = ""
    @Binding var index : Int
    
    var body: some View{
        
        ZStack(alignment: .bottom) {
            
            VStack{
                
                HStack{
                    
                    Spacer(minLength: 0)
                    
                    VStack(spacing: 10){
                        
                        Text("SignUp")
                            .foregroundColor(self.index == 1 ? Color("Color") : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(self.index == 1 ? Color("play") : Color.clear)
                            .frame(width: 100, height: 5)
                    }
                }
                .padding(.top, 30)// for top curve...
                
                VStack{
                    
                    HStack(spacing: 15){
                        
                        Image(systemName: "envelope.fill")
                        .foregroundColor(Color("play"))
                        
                        TextField("Email Address", text: self.$email)
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 50)
                
                SecureTextField(placeholder: "Password", password: $password)
            .padding(.horizontal)
            .padding(.top, 30)
                
                SecureTextField(placeholder: " Re-enter Password", password: $password)
            .padding(.horizontal)
            .padding(.top, 30)
            }
            .padding()
            // bottom padding...
            .padding(.bottom, 65)
            .background(Color("Background"))
            .clipShape(CurveShapeRight())
            // clipping the content shape also for tap gesture...
            .contentShape(CurveShapeRight())
            // shadow...
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
            .onTapGesture {
            
                self.index = 1
                    
            }
            .cornerRadius(35)
            .padding(.horizontal,20)
            
            // Button...
            
            Button(action: {
                
            }) {
                
                Text("SIGNUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Color("play"))
                    .clipShape(Capsule())
                    // shadow...
                    .shadow(color: Color("Color").opacity(0.2), radius: 2, x: 0, y: 2)
            }
            // moving view down..
            .offset(y: 25)
            // hiding view when its in background...
            // only button...
            .opacity(self.index == 1 ? 1 : 0)
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp(index: .constant(1))
//            .preferredColorScheme(.dark)
    }
}
