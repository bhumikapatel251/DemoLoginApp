//
//  ContentView.swift
//  DemoLoginApp
//
//  Created by Bhumika Patel on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                Text("Here is my creation Account Screen")
            }
        }
        Text("Lets build out our login screen")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
