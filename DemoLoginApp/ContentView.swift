//
//  ContentView.swift
//  DemoLoginApp
//
//  Created by Bhumika Patel on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoginMode = false
    @State var show: Bool = false
    @State var email = ""
    @State var pass = ""
    @State var conPass = ""
    //Animation Properties
    @State var isTapped = false
    var body: some View {
        NavigationView{
                VStack{
                    
                    VStack{
                        VStack {
                            HStack {
                                Image(systemName: "envelope")
                                TextField("Email", text: self.$email)
                            }
                            Rectangle()
                                .fill(self.email == "" ? Color.black.opacity(0.08) : Color.blue)
                                .frame(height: 3)
                                .padding(.top,0)
                                .padding()
                        //divider
                        
                        
                            
                        }
                        
                        
                        
                    VStack {
                        HStack {
                            Image(systemName: "lock")
                                .font(.system(size: 22))
                            SecureField("Password", text: self.$pass)
                        }
                        Rectangle()
                            .fill(self.email == "" ? Color.black.opacity(0.08) : Color.blue)
                            .frame(height: 3)
                            .padding(.top,0)
                            .padding()
                    
//                    //divider
//                    Rectangle()
//                        .fill(Color.gray)
//                        .opacity(1.5)
//                        .frame(width: 300,height:1)
//                        .padding(.top,5)
                    }
              
                    
                    
                    
                   
                    HStack {
                        Button{
                                show.toggle()
                            } label: {
                                Text("ForgotPassword")
                                    .foregroundColor(Color("Color-1"))
                                    .fontWeight(.semibold)
                                    
                                    
                        }
                            .padding(.leading, 20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .sheet(isPresented: $show){
                                VStack{
                                    Text("Forgot Password")
                                        .font(.system(size: 22).bold())
                                        .padding(.leading,20)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    VStack {
                                        HStack{
                                            Button(action: {},
                                                   label: {
                                                Image(systemName: "envelope")
                                                    .font(.system(size: 20))
                                            })
                                            TextField("", text: self.$email)
                                                .keyboardType(.emailAddress)
                                                .autocapitalization(.none)
                                            
                                        }
                                        Rectangle()
                                            .fill(self.email == "" ? Color.black.opacity(0.08) : Color.blue)
                                            .frame(height: 3)
                                            .padding(.top,0)
                                            .padding()
                                 
                                   
                                    }
                                    
                                    .foregroundColor(Color.black.opacity(0.7))
                                    .padding()
                                    .background(Color.white)
                                    .overlay(Rectangle().stroke(Color.black.opacity(0.03),lineWidth: 1).shadow(radius:4))
                                    .padding(.horizontal)
                                    .padding(.bottom,10)
                                    
                                    VStack {
                                        Button(action: {}, label: {
                                        
                                            Text("Send")
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .padding(.vertical)
                                                .padding(.horizontal, 35)
                                                .frame(width: 280, height: 50)
                                                .background(LinearGradient(gradient: .init(colors: [Color("Color"),Color("Color-1")]), startPoint: .leading, endPoint: .trailing))
                                                .cornerRadius(30)
                                                //.frame(width: 200, height: 100, alignment: .bottom)
                                        })
                                        .padding(.vertical,0)
                                        .padding(.trailing,180)
                                       // .padding()
                                    }
                                    .padding(.top,25)
                                }
                            }
                        }
                    }
                    .foregroundColor(Color.black.opacity(0.7))
                    .padding()
                    .background(Color.white)
                    .overlay(Rectangle().stroke(Color.black.opacity(0.09),lineWidth: 2).shadow(radius:5))
                    .padding(.horizontal,10)
                    .padding(.bottom,20)
                    VStack {
                        Button(action: {}, label: {
                        
                            Text("Login")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .padding(.horizontal, 35)
                                .frame(width: 280, height: 50)
                                .background(LinearGradient(gradient: .init(colors: [Color("Color"),Color("Color-1")]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(30)
                                //.frame(width: 200, height: 100, alignment: .bottom)
                        })
                        .padding(.vertical,20)
                        .padding(.trailing,180)
                        .padding()
                    }
                    //divider
                        Rectangle()
                         .fill(Color.gray)
                         .opacity(1.5)
                         .frame(width: 300,height:1)
                         .padding(.top,15)
                    
                        HStack {
                            NavigationLink(
                                destination: CreateAccountScreen(),
                                label: {
                                    Text("Don't Have An Account?")
                                        .foregroundColor(.black)
                                    Text("Create Account")
                                        .font(.system(size: 18))
                                            .fontWeight(.semibold)
                                .foregroundColor(Color("Color-1"))
                                }
                            )
                        }
                    
                    
                    }
   
            .navigationTitle("Log In")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
