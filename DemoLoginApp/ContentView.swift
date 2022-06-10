//
//  ContentView.swift
//  DemoLoginApp
//
//  Created by Bhumika Patel on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoginMode = false
    
    @State var text = ""
    //Animation Properties
    @State var isTapped = false
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Picker(selection: $isLoginMode, label: Text("Picker here")) {
                        Text("Login")
                            .tag(true)
                        Text("Create Account")
                            .tag(false)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    Button {
                        
                    } label: {
                        Image(systemName: "person.fill")
                            .font(.system(size: 64))
                            .padding()
                    }
                    VStack(alignment: .leading, spacing: 4, content: {
                        
                        TextField("", text: $text) { (status) in
                        
                            if status{
                                withAnimation(.easeIn){
                                
                                    isTapped = true
                                }
                            }
                        } onCommit: {
                           //only if no text type
                            if text == ""{
                                withAnimation(.easeOut){
                                    isTapped = false
                                }
                            }
                        }
                        // if tapped
                        .padding(.top, isTapped ? 15 : 0)
                        //overlay will avoid clicked the textfield
                        //so moving it below the text field
                        
                        .background(
                            Text("Email")
                                .scaleEffect(isTapped ? 0.8 : 1)
                                .offset(x: isTapped ? -7 : 0, y: isTapped ? -15 : 0 )
                                .foregroundColor(.gray)
                            
                            ,alignment: .leading
                        )
                        //divider
                        Rectangle()
                            .fill(isTapped ? Color.accentColor : Color.gray)
                            .opacity(isTapped ? 1 : 0.5)
                            .frame(height: 1)
                    })
                    .padding()
                    VStack(alignment: .leading, spacing: 4, content: {
                        
                        TextField("", text: $text) { (status) in
                        
                            if status{
                                withAnimation(.easeIn){
                                
                                    isTapped = true
                                }
                            }
                        } onCommit: {
                           //only if no text type
                            if text == ""{
                                withAnimation(.easeOut){
                                    isTapped = false
                                }
                            }
                        }
                        // if tapped
                        .padding(.top, isTapped ? 15 : 0)
                        //overlay will avoid clicked the textfield
                        //so moving it below the text field
                        
                        .background(
                            Text("Password")
                                .scaleEffect(isTapped ? 0.8 : 1)
                                .offset(x: isTapped ? -7 : 0, y: isTapped ? -15 : 0 )
                                .foregroundColor(.gray)
                            
                            ,alignment: .leading
                        )
                        //divider
                        Rectangle()
                            .fill(isTapped ? Color.accentColor : Color.gray)
                            .opacity(isTapped ? 1 : 0.5)
                            .frame(height: 1)
                    })
                    .padding()
                    VStack(alignment: .leading, spacing: 4, content: {
                        
                        TextField("", text: $text) { (status) in
                        
                            if status{
                                withAnimation(.easeIn){
                                
                                    isTapped = true
                                }
                            }
                        } onCommit: {
                           //only if no text type
                            if text == ""{
                                withAnimation(.easeOut){
                                    isTapped = false
                                }
                            }
                        }
                        // if tapped
                        .padding(.top, isTapped ? 15 : 0)
                        //overlay will avoid clicked the textfield
                        //so moving it below the text field
                        
                        .background(
                            Text("Confirm Password")
                                .scaleEffect(isTapped ? 0.8 : 1)
                                .offset(x: isTapped ? -7 : 0, y: isTapped ? -15 : 0 )
                                .foregroundColor(.gray)
                            
                            ,alignment: .leading
                        )//divider
                        Rectangle()
                            .fill(isTapped ? Color.accentColor : Color.gray)
                            .opacity(isTapped ? 1 : 0.5)
                            .frame(height: 1)
                    })
                    
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    
                    Button(action: {}, label: {
                        Spacer()
                        Text("Create Account")
                            .foregroundColor(.white)
                            .padding(.vertical,10)
                        Spacer()
                          
                    })
                   
                    .background(Color.blue)
                    
                   
                    Text("Here is my creation Account Screen")
                }
            }
            .navigationTitle("Create Account")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
