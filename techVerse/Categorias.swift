//
//  Categorias.swift
//  techVerse
//
//  Created by Student on 29/04/23.
//

import SwiftUI

struct Categorias: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack{
                    
                    Text("Categorias")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color("azulEscuro"))
                        .padding(.top, 6.0)
                    
                    
                    HStack{
                        
                        Text("Em Alta")
                            .bold()
                            .font(.title3)
                            .padding()
                        Spacer()
                        Text("See all")
                            .padding()
                            .foregroundColor(Color.gray)
                    }
                    HStack{
                        NavigationLink{ CategoriasFilter(categoriaSelecionada: "[Cloud]") } label: {
                            VStack{
                                Image("3-cloud-service")
                                    .resizable()
                                    .frame(width: 60 , height:60)
                                    .clipShape(Circle())
                                    .padding(.top)
                                Text("Cloud Service")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                
                            }.frame(width: 140,height: 140)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 1)
                                .padding(.leading)
                        }
                        
                        NavigationLink{ CategoriasFilter(categoriaSelecionada: "[Backend]") } label: {
                            VStack{
                                Image("2-backend")
                                    .resizable()
                                    .frame(width: 60 , height:60)
                                
                                    .clipShape(Circle())
                                    .padding(.top)
                                Text("Backend")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                
                            }.frame(width: 140,height: 140)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 1)
                                .padding(.leading)
                        }
                        
                    }
                    HStack{
                        NavigationLink{ CategoriasFilter(categoriaSelecionada: "[Analise de dados]") } label: {
                            VStack{
                                Image("1-analise-de-dados")
                                    .resizable()
                                    .frame(width: 60 , height:60)
                                    .clipShape(Circle())
                                    .padding(.top)
                                Text("Analise")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                Text("de Dados")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .padding(.bottom)
                                    .foregroundColor(Color.black)
                                
                            }.frame(width: 140,height: 140)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 1)
                                .padding(.leading)
                        }
                        
                        NavigationLink{ CategoriasFilter(categoriaSelecionada: "[Desenvolvimento]") } label: {
                            VStack{
                                
                                Image("4-desenvolvimento-de-software")
                                    .resizable()
                                    .frame(width: 60 , height:60)
                                    .clipShape(Circle())
                                    .padding(.top)
                                Text("Desenvolvimento ")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                Text("de Software")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .padding(.bottom)
                                    .foregroundColor(Color.black)
                                
                            }.frame(width: 140,height: 140)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 1)
                                .padding(.leading)
                        }

                        
                        
                    }
                    
                    
                    Spacer()
                    HStack{
                        
                        Text("Todas Categorias")
                            .bold()
                            .font(.title3)
                            .padding()
                        Spacer()
                        Text("See all")
                            .padding()
                            .foregroundColor(Color.gray)
                    }
                    HStack{
                        
                        NavigationLink{ CategoriasFilter(categoriaSelecionada: "[Desenvolvimento]") } label: {
                            VStack{
                                
                                Image("5-desenvolvimento-web")
                                    .resizable()
                                    .frame(width: 60 , height:60)
                                    .clipShape(Circle())
                                    .padding(.top)
                                Text("Desenvolvimento")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                Text("Web")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                
                            }.frame(width: 140,height: 140)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 1)
                                .padding(.leading)
                        }
                        
                        NavigationLink{ CategoriasFilter(categoriaSelecionada: "[Design]") } label: {
                            VStack{
                                
                                Image("6-design-grafico")
                                    .resizable()
                                    .frame(width: 60 , height:60)
                                
                                    .clipShape(Circle())
                                    .padding(.top)
                                Text("Design")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                Text("Grafico")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                
                                
                            }.frame(width: 140,height: 140)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 1)
                                .padding(.leading)
                        }
                        
                        
                    }
                    HStack{
                        
                        NavigationLink{ CategoriasFilter(categoriaSelecionada: "[Redes]") } label: {
                            VStack{
                                
                                Image("7-redes")
                                    .resizable()
                                    .frame(width: 60 , height:60)
                                    .clipShape(Circle())
                                    .padding(.top)
                                Text("Redes")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                
                                
                            }.frame(width: 140,height: 140)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 1)
                                .padding(.leading)
                        }
                        
                        NavigationLink{ CategoriasFilter(categoriaSelecionada: "[Segurança]") } label: {
                            VStack{
                                
                                Image("8-seguranca")
                                    .resizable()
                                    .frame(width: 60 , height:60)
                                    .clipShape(Circle())
                                    .padding(.top)
                                Text("Segurança")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.black)
                                
                            }.frame(width: 140,height: 140)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 1)
                                .padding(.leading)
                        }
                        
                    }
                }
                HStack{
                    
                    NavigationLink{ CategoriasFilter(categoriaSelecionada: "[Cloud]") } label: {
                        VStack{
                            
                            Image("3-cloud-service")
                                .resizable()
                                .frame(width: 60 , height:60)
                                .clipShape(Circle())
                                .padding(.top)
                            Text("Cloud Service")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                            
                        }.frame(width: 140,height: 140)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 1)
                            .padding(.leading)
                    }
                    
                    NavigationLink{ CategoriasFilter(categoriaSelecionada: "[Backend]") } label: {
                        VStack{
                            
                            Image("2-backend")
                                .resizable()
                                .frame(width: 60 , height:60)
                            
                                .clipShape(Circle())
                                .padding(.top)
                            Text("Backend")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                            
                            
                        }.frame(width: 140,height: 140)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 1)
                            .padding(.leading)
                    }

                    
                }
                HStack{
                    
                    NavigationLink{ CategoriasFilter(categoriaSelecionada: "[Analise de dados]") } label: {
                        VStack{
                            
                            Image("1-analise-de-dados")
                                .resizable()
                                .frame(width: 60 , height:60)
                                .clipShape(Circle())
                                .padding(.top)
                            Text("Analise")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                            Text("de Dados")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .padding(.bottom)
                                .foregroundColor(Color.black)
                            
                        }.frame(width: 140,height: 140)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 1)
                            .padding(.leading)
                    }
                    
                    NavigationLink{ CategoriasFilter(categoriaSelecionada: "[Desenvolvimento]") } label: {
                        VStack{
                            
                            Image("4-desenvolvimento-de-software")
                                .resizable()
                                .frame(width: 60 , height:60)
                                .clipShape(Circle())
                                .padding(.top)
                            Text("Desenvolvimento ")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                            Text("de Software")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .padding(.bottom)
                                .foregroundColor(Color.black)
                            
                            
                        }.frame(width: 140,height: 140)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 1)
                            .padding(.leading)
                    }
                    
                }
            }
        }
    }
}

struct Categorias_Previews: PreviewProvider {
    static var previews: some View {
        Categorias()
    }
}

