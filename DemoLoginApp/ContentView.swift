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
                        withAnimation(.easeOut){
                            isTapped = false
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
                })
                .padding(.vertical,12)
                .padding(.horizontal)
                .background(Color.gray.opacity(0.09))
                .cornerRadius(5)
                Text("Here is my creation Account Screen")
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
