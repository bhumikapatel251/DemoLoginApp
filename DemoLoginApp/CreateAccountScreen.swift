//
//  CreateAccountScreen.swift
//  DemoLoginApp
//
//  Created by Bhumika Patel on 10/06/22.
//

import SwiftUI

struct CreateAccountScreen: View {
    @State var email = ""
    @State var pass = ""
    @State var conPass = ""
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{

//                    Picker(selection: $isLoginMode, label: Text("Picker here")) {
//                        Text("Login")
//                            .tag(true)
//                        Text("Create Account")
//                            .tag(false)
//                    }
//                    .pickerStyle(SegmentedPickerStyle())
//                    .padding()
                    Button {
                        
                    } label: {
                        Image(systemName: "person.fill")
                            .font(.system(size: 64))
                            .padding()
                    }
                    VStack {
                        HStack{
                            Button(action: {},
                                   label: {
                                Image(systemName: "envelope")
                            })
                            TextField("Email", text: $email)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                        }
                    
                    //divider
                    Rectangle()
                        .fill(Color.gray)
                        .opacity(1.5)
                        .frame(width: 300,height:1)
                        .padding(.top,5)
                    }
                    .padding()
                    VStack {
                        HStack{
                            Button(action: {},
                                   label: {
                                Image(systemName: "lock")
                                    .font(.system(size: 22))
                            })
                            SecureField("Password", text: $pass)
                               // .keyboardType()
                                .autocapitalization(.none)
                        }
                    
                    //divider
                    Rectangle()
                        .fill(Color.gray)
                        .opacity(1.5)
                        .frame(width: 300,height:1)
                        .padding(.top,5)
                    }
                    .padding()
                    
                    VStack {
                        HStack{
                            Button(action: {},
                                   label: {
                                Image(systemName: "lock")
                                    .font(.system(size: 22))
                            })
                            SecureField("Confirm Password", text: $conPass)
                               // .keyboardType()
                                .autocapitalization(.none)
                        }
                    
                    //divider
                    Rectangle()
                        .fill(Color.gray)
                        .opacity(1.5)
                        .frame(width: 300,height:1)
                        .padding(.top,5)
                    }
                    .padding()
                    
                    Button(action: {}, label: {
                        Spacer()
                        Text("Create")
                            .foregroundColor(.white)
                            .padding(.vertical,10)
                        Spacer()
                          
                    })
                    
                   
                    .background(Color.blue)
                    .frame(width:350, height: 50)
                    .cornerRadius(50)
                    
                    
                    
                }
               
            }
            .navigationTitle("CreateAccount")
        }
        
    }
}

struct CreateAccountScreen_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountScreen()
    }
}
