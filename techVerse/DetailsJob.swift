//
//  DetailsJob.swift
//  techVerse
//
//  Created by Student24 on 11/05/23.
//

import SwiftUI

struct DetailsJob: View {
    var job : Job
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ScrollView(showsIndicators: false){
                    VStack(){
                        Text("Detalhes Vaga").font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("azulEscuro"))
                            .padding(.bottom, 30.0)
                            .multilineTextAlignment(.center)
                        AsyncImage(url: URL(string: job.imagem)){
                            image in image.resizable().scaledToFit()
                        } placeholder: {
                            ProgressView()
                        }
                        
                        HStack{
                            Image("cursos")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 37.5, height: 37.5)
                                .clipShape(Circle())
                            Text("Empresa: \(job.empresa)").font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                            Spacer()
                        }
                        .padding(.leading)
                        Text(job.nomeVaga).font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("azulEscuro"))
                            .padding(.top, 20)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 50.0) //nome do curso
                        Text(job.info_vaga).font(.body)
                            .fontWeight(.thin)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .padding(.all, 20)
                        
                        VStack{
                            HStack{
                                Text("Local").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text(job.local).font(.body)
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
                                
                                Link(destination: URL(string: job.link)!) {
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
                                Text("Modalidade").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text(job.modalidade).font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Nível de Experiência").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text(job.nivel_xp).font(.body)
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
                                Courses()
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

struct DetailsJob_Previews: PreviewProvider {
    static var previews: some View {
        let placeholder = Job(_id: "Id teste", nomeVaga: "vaga teste", info_vaga: "teste info", categoria: "categoria test", nivel_xp: "2", local: "Brasil", modalidade: "presencial", imagem: "", empresa: "Take", link: "x")
        DetailsJob(job : placeholder)
    }
}
