//
//  InitialPage.swift
//  techVerse
//
//  Created by Student06 on 27/04/23.
//

import SwiftUI

struct InitialPage: View {
    var body: some View {
        NavigationStack{

            VStack(alignment: .trailing){
                
                Spacer()
                
                Image("initialPage")
                    .resizable()
                    .scaledToFit()
                
                Text("Conheça novas oportunidades!").font(.title3)
                    .fontWeight(.bold).padding(.bottom, 10)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 50.0)
                
                Text("Te auxiliaremos a encontrar oportunidades baseado em interesses e demografia!").font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 50.0)
                
                Spacer()
                
                VStack{
                    NavigationLink{
                        Login()
                    } label: {
                        HStack{
                            Image(systemName: "heart").font(.title)
                            Text("Começar")
                                .fontWeight(.bold).font(.title3)
                        }.padding().foregroundColor(.white)
                            .background(Color("azulEscuro"))
                            .cornerRadius(40)
                        
                    }
                }.padding(.trailing, 20)
            }
            
        }
    }
}

struct InitialPage_Previews: PreviewProvider {
    static var previews: some View {
        InitialPage()
    }
}
