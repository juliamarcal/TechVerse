//
//  CategoriasFilter.swift
//  techVerse
//
//  Created by Student15 on 10/05/23.
//

import SwiftUI

struct CategoriasFilter: View {
    
    var categoriaSelecionada: String
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("O que você deseja ver?")
                    .foregroundColor(Color("azulEscuro"))
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 25.0)
                NavigationLink{
                    Courses(filter: categoriaSelecionada)
                } label: {
                    HStack{
                        Text("Cursos")
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    .frame(width: 120, height: 45)
                    .padding(.horizontal, 109.0)
                    .padding(.vertical, 10.0)
                    .foregroundColor(Color.white)
                    .background(Color("azulEscuro"))
                    .cornerRadius(8)
                }
                .padding(.bottom) // Nav Link
                
                NavigationLink{
                    Lectures(filter: categoriaSelecionada)
                } label: {
                    HStack{
                        Text("Palestras")
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    .frame(width: 120, height: 45)
                    .padding(.horizontal, 109.0)
                    .padding(.vertical, 10.0)
                    .foregroundColor(Color.white)
                    .background(Color("azulEscuro"))
                    .cornerRadius(8)
                }
                .padding(.bottom) // Nav Link
                
                NavigationLink{
                    HomePage()
                } label: {
                    HStack{
                        Text("Vagas")
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    .frame(width: 120, height: 45)
                    .padding(.horizontal, 109.0)
                    .padding(.vertical, 10.0)
                    .foregroundColor(Color.white)
                    .background(Color("azulEscuro"))
                    .cornerRadius(8)
                } // Nav Link
                Image("desenho")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 30.0)
                
            }// VStack
        }// Nav Stack
    }
}

struct CategoriasFilter_Previews: PreviewProvider {
    static var previews: some View {
        CategoriasFilter(categoriaSelecionada: "")
    }
}
