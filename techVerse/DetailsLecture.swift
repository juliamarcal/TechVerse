//
//  DetailsLecture.swift
//  techVerse
//
//  Created by Student24 on 29/04/23.
//

import SwiftUI

struct DetailsLecture: View {
    var lecture : Lecture
    var body: some View {
        NavigationStack{
            
            ScrollView{
                ScrollView(showsIndicators: false){
                    VStack(){
                        Text("Detalhes Palestra").font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("azulEscuro"))
                            .padding(.bottom, 30.0)
                            .multilineTextAlignment(.center)
                        AsyncImage(url: URL(string: lecture.imagem)){
                                                   image in image.resizable().scaledToFit()
                                               } placeholder: {
                                                   ProgressView()
                                               }
                        HStack{
                            Image("palestras")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 37.5, height: 37.5)
                                .clipShape(Circle())
                            Text("Palestrante: \(lecture.nome_palestrante )").font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                            Spacer()
                        }
                        .padding(.leading)
                        Text(lecture.nome_palestra).font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("azulEscuro"))
                            .padding(.top, 20)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 50.0) //nome do curso
                        Text( lecture.info_palestra).font(.body)
                            .fontWeight(.thin)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .padding(.all, 20)
                        
                        VStack{
                            HStack{
                                Text("Organização").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text(lecture.organizacao
                                ).font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Necessita de ingresso?").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                if(lecture.ingresso == true){
                                    Text("Sim"
                                    ).font(.body)
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.gray)
                                        .multilineTextAlignment(.center)
                                }
                                else{
                                    Text("Não"
                                    ).font(.body)
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.gray)
                                        .multilineTextAlignment(.center)
                                }
                                
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Dia").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text(lecture.dia
                                ).font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Link").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Link(destination: URL(string: lecture.link_pagina_oficial)!) {
                                    ZStack {
                                        Text("Clique Aqui!")
                                            .font(.body)
                                                .fontWeight(.medium)
                                                .foregroundColor(Color.gray)
                                                .multilineTextAlignment(.center)
                                    }
                                }
                                
                                
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Custo").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text("89.90").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Local").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text(lecture.local).font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Horário").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text(lecture.horario).font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                        }
                        .padding(.horizontal)
                        Spacer()
                        
                        VStack{
                            NavigationLink{
                                HomePage()
                                //Courser()
                            } label: {
                                HStack{
                                    Image(systemName: "heart").font(.title)
                                    Text("Continuar")
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
    }
}

struct DetailsLecture_Previews: PreviewProvider {
    static var previews: some View {
        let placeholder = Lecture(_id: "id", nome_palestrante: "nome X", info_palestrante: "info x", nome_palestra: "categoria X", info_palestra: "25", dia: "2 horas", local: "sim", horario: "url X", categoria: " categoria X", link_pagina_oficial: "pessoalmente", organizacao: "PUC MINAS", ingresso: true, imagem: "https://nativeip.com.br/wp-content/uploads/2021/01/inteligencia-artificial-mudando-forma-comunicacao-native.jpg", nota: 5)
               DetailsLecture(lecture : placeholder)
    }
}
//var _id : String
//var nome_palestrante : String
//var info_palestrante : String
//var nome_palestra : String
//var info_palestra : String
//var dia : String
//var local : String
//var horario: String
//var categoria: Categoria
//var link_pagina_oficial: String
//var organizacao : String
//var ingresso : Bool
//var preco: Precos
//var imagem: String
