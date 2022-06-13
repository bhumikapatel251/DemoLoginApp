//
//  LoginScreen.swift
//  DemoLoginApp
//
//  Created by Bhumika Patel on 13/06/22.
//

import SwiftUI

struct LoginScreen: View {
   
    var body: some View {
       Login()
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

struct Login : View{
    @State var isLoginMode = false
    @State var show: Bool = false
    @State var email = ""
    @State var pass = ""
    @State var conPass = ""
    var body: some View{
        ZStack{
            
            Color.black.opacity(0.03).edgesIgnoringSafeArea(.all)
            
            VStack{
                
                HStack(alignment: .top, spacing: 0){
                    Text("Log In")
                }
                
                VStack(alignment: .leading){
                    
                    
                    HStack {
                        Image(systemName: "envelope")
                        TextField("", text: self.$email)
                    }
                    Rectangle()
                        .fill(self.email == "" ? Color.black.opacity(0.08) : Color("Color"))
                        .frame(width:320,height: 3)
                        .padding(.top,0)
                }
                .foregroundColor(Color.black.opacity(0.7))
                .padding()
                .background(Color.white)
                .overlay(Rectangle().stroke(Color.black.opacity(0.03),lineWidth: 1).shadow(radius:4))
                .padding(.horizontal)
                .padding(.bottom,10)
                Spacer()
            }
        }
    }
}
