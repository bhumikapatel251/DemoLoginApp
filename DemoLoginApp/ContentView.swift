//
//  ContentView.swift
//  DemoLoginApp
//
//  Created by Bhumika Patel on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoginMode = false
    
    @State var email = ""
    @State var pass = ""
    @State var conPass = ""
    //Animation Properties
    @State var isTapped = false
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
                    
                    
                    
                    Button{
                        
                    } label: {
                        Text("ForgotPassword")
                            .foregroundColor(.black)
                    }
                    Button(action: {}, label: {
                        Spacer()
                        Text("Login")
                            .foregroundColor(.white)
                            .padding(.vertical,10)
                        Spacer()
                          
                    })
                   
                    .background(Color.blue)
                    
                    NavigationLink(
                        destination: CreateAccountScreen(),
                     label: {
                        Text("Create Account")
                            .foregroundColor(.black)
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
