//
//  tbView.swift
//  techVerse
//
//  Created by Student10 on 10/05/23.
//

import SwiftUI

struct tbView: View {
    var body: some View {
        TabView{
            HomePage()
                .tabItem {
                    Label("Home",
                    systemImage: "house")
                }
            Courses()
                .tabItem {
                    Label("Cursos",
                    systemImage: "book.fill")
                }
            Jobs()
                .tabItem {
                    Label("Vagas",
                    systemImage: "suitcase.fill")
                }
            Lectures()
                .tabItem {
                    Label("Palestras",
                    systemImage: "figure.wave")
                }
            
        }
    }
}

struct tbView_Previews: PreviewProvider {
    static var previews: some View {
        tbView()
    }
}
