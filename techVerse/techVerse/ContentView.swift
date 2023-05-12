//
//  ContentView.swift
//  techVerse
//
//  Created by Student06 on 27/04/23.
//

import SwiftUI

struct ContentView: View {
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State private var navigateToHomePage = false

    var body: some View {
        VStack {
            Image("techVerseLogo")
                .resizable()
                .frame(width: 235, height: 100)
                .padding()
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                self.navigateToHomePage = true
            }
        }
        .fullScreenCover(isPresented: $navigateToHomePage, content: {
            InitialPage()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
