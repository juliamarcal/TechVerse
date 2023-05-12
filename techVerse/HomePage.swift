//
//  HomePage.swift
//  techVerse
//
//  Created by Student06 on 27/04/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack{
            NavigationStack{
                ScrollView {
                    HStack{
                        Image("user")
                            .resizable()
                            .frame(width: 60 , height:60)
                            .clipShape(Circle())
                            .padding([.leading, .top])
                        VStack{
                            Text("Seja bem vindo!")
                                .font(.title3)
                                .padding([.leading, .top])
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                            
                            Text("Pedro Olyntho")
                                .padding(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundColor(Color("azulEscuro"))
                            
                        }
                        Spacer()
                    }
                    .padding([.top, .bottom])
                    HStack{
                        Text("Categorias")
                            .padding(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title2)
                        
                        NavigationLink{
                        Categorias()
                        } label: {
                            Text("todas categorias")
                                .foregroundColor(.gray)
                                .font(.footnote)
                        }
                        
                        Image(systemName: "arrow.right")
                            .foregroundColor(.gray)
                        
                    }
                    .padding([.trailing, .top])
                    HStack{
                        Spacer()
                       
                            NavigationLink{
                                CategoriasFilter(categoriaSelecionada: "[Backend]")
                            } label: {
                                VStack{
                                    Image("2-backend")
                                        .resizable()
                                        .frame(width: 80 , height:80)
                                        .clipShape(Circle())
                                        .padding(.leading)
                                Text("Backend")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                            }
                            
                        }
                        Spacer()
                        
                            NavigationLink{
                                CategoriasFilter(categoriaSelecionada: "[Redes]")
                            } label: {
                                VStack{
                                    Image("7-redes")
                                        .resizable()
                                        .frame(width: 80 , height:80)
                                        .clipShape(Circle())
                                        .padding(.leading)
                                Text("Redes")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                            }
                           
                        }
                        Spacer()
                       
                            NavigationLink{
                                CategoriasFilter(categoriaSelecionada: "[Segurança]")
                            } label: {
                                VStack{
                                    Image("8-seguranca")
                                        .resizable()
                                        .frame(width: 80 , height:80)
                                        .clipShape(Circle())
                                        .padding(.leading)
                                Text("Segurança")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                            }
                           
                        }
                        Spacer()
                    }.padding(.bottom)
                    
                    Text("Populares")
                        .padding([.top, .leading, .bottom])
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title2)
                    HStack{
                        Image("populares")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(5)
                            .padding([.leading, .bottom, .top])
                        
                        VStack{
                            Text("HTML e CSS: responsividade com mobile-first")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("Alura")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(.gray)
                                .font(.footnote)
                            
                        }
                    }
                    .cornerRadius(5)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 0.3))
                    .padding([.trailing, .leading, .bottom])
                    Text("Oportunidades")
                        .padding([.top, .leading, .bottom])
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title2)
                    HStack{
                        Spacer()
                        NavigationLink{
                            Lectures()
                        } label: {
                            VStack{
                                Image("palestras")
                                    .resizable()
                                    .frame(width: 80 , height:80)
                                    .clipShape(Circle())
                                    .padding(.leading)
                                Text("Palestras")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                            }
                        }
                        
                        Spacer()
                        VStack{
                            NavigationLink{
                            Courses()
                            } label: {
                                VStack(){
                                    Image("cursos")
                                        .resizable()
                                        .frame(width: 80 , height:80)
                                        .clipShape(Circle())
                                        .padding(.leading)
                                    
                                    Text("Cursos")
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        Spacer()
                        VStack{
                            NavigationLink{
                            Jobs()
                            } label: {
                        
                            VStack{
                                    Image("vagas")
                                        .resizable()
                                        .frame(width: 80 , height:80)
                                        .clipShape(Circle())
                                        .padding(.leading)
                                    Text("Vagas")
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                        Spacer()
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
