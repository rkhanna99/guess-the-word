//
//  ContentView.swift
//  GuessWord
//
//  Created by Rahul Khanna on 5/29/21.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    // Initialize Firebase
    init() {
            FirebaseApp.configure()
    }
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
