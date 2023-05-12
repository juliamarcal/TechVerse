//
//  DetailsCourse.swift
//  techVerse
//
//  Created by Student24 on 29/04/23.
//

import SwiftUI

struct DetailsCourse: View {
    var course : Course
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ScrollView(showsIndicators: false){
                    VStack(){
                        Text("Detalhes Cursos").font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("azulEscuro"))
                            .padding(.bottom, 30.0)
                            .multilineTextAlignment(.center)
                        AsyncImage(url: URL(string: course.imagem)){
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
                            Text("Organização: \(course.organizacao)").font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                            Spacer()
                        }
                        .padding(.leading)
                        Text(course.nomeDoCurso).font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("azulEscuro"))
                            .padding(.top, 20)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 50.0) //nome do curso
                        Text(course.info_curso).font(.body)
                            .fontWeight(.thin)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .padding(.all, 20)
                        
                        VStack{
                            HStack{
                                Text("Duração").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text(course.duracao).font(.body)
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
                                
                                Link(destination: URL(string: course.link)!) {
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
                                Text(course.custo).font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding(.bottom)
                            HStack{
                                Text("Emite certificado?").font(.body)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("verdeEscuro"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                                Text(course.certificado).font(.body)
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

struct DetailsCourse_Previews: PreviewProvider {
    static var previews: some View {
        let placeholder = Course(_id: "id", nomeDoCurso: "nome X", info_curso: "info x", categoria: "categoria X", custo: "25", duracao: "2 horas", certificado: "sim", imagem: "url X", disponibilidade: "pessoalmente", nota: 2.0, organizacao: "PUC MINAS", link: "url")
        DetailsCourse(course : placeholder)
    }
}
