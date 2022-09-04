//
//  Login.swift
//  TicTacToe
//
//  Created by Roy Aiyetin on 04/09/2022.
//

import SwiftUI

struct SecureTextField: View {
    var placeholder: String
    @Binding var password: String
    @State private var isSecureField = true
    
    var body: some View {
        
        VStack {
            HStack(spacing: 15){
                Image(systemName: isSecureField ? "eye.slash.fill" : "eye")
                .foregroundColor(Color("play"))
                .onTapGesture {
                    isSecureField.toggle()
                }
                
                if isSecureField {
                    SecureField(placeholder, text: $password)
                } else {
                    TextField(placeholder, text: $password)
                }
            }
            
            Divider().background(Color.white.opacity(0.5))
        }
    }
}

struct Login: View {
    @State var email = ""
    @State var password = ""
    @State var isEditing = false
    @Binding var index : Int
    
    var body: some View{
        
        ZStack(alignment: .bottom) {
            
            VStack{
                
                HStack{
                    
                    VStack(spacing: 10){
                        
                        Text("Login")
                            .foregroundColor(self.index == 0 ? Color("Color") : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(self.index == 0 ? Color("play") : Color.clear)
                            .frame(width: 100, height: 5)
                    }
                    
                    Spacer(minLength: 0)
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
                
                HStack{
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("Forgot Password?")
                            .foregroundColor(Color("Color"))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            // bottom padding...
            .padding(.bottom, 65)
            .background(Color("Background"))
            .clipShape(CurveShape())
            .contentShape(CurveShape())
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
        
            .onTapGesture {
                self.index = 0
            }
            .cornerRadius(35)
            .padding(.horizontal,20)
            
            // Button...
            
            Button(action: {
                
            }) {
                
                Text("LOGIN")
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
            .opacity(self.index == 0 ? 1 : 0)
        }
    }

}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(index: .constant(0))
//            .preferredColorScheme(.dark)
    }
}
