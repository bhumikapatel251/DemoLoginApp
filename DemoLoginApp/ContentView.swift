//
//  ContentView.swift
//  DemoLoginApp
//
//  Created by Bhumika Patel on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoginMode = false
    var body: some View {
        NavigationView{
            ScrollView{
                Picker(selection: $isLoginMode, label: Text("Picker here")) {
                    Text("Login")
                    Text("Create Account")
                }
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
