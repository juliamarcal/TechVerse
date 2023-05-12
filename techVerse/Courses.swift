//
//  Courses.swift
//  techVerse
//
//  Created by Student06 on 29/04/23.
//

import SwiftUI

let url = URL(string: "https://cdns-images.dzcdn.net/images/cover/4f2649c6080ad6519118b5d76798897a/500x500.jpg")

struct Courses: View {
    @StateObject var courses = ViewModel()
    var filter: String?

    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading){
                        
                        VStack(alignment: .trailing){
                            Text("Home / Oportunidades / Cursos").foregroundColor(.gray).padding([.leading, .bottom], 22.0)
                        }
   
                        VStack(alignment: .leading){
                            ForEach(courses.chars, id: \._id){
                                course in
                                
                                if(course.categoria == filter || filter == nil){
                                NavigationLink(destination: DetailsCourse(course: course)){
                                    HStack{
                                        VStack(alignment: .trailing){
                                            AsyncImage(url: URL(string: course.imagem)){
                                                image in image.resizable().frame(width: 150, height: 185)
                                            } placeholder: {
                                                ProgressView()
                                            }
                                        }.padding(10).cornerRadius(45)
                                        
                                        VStack(alignment: .leading){
                                            
                                            HStack{
                                                Text(course.categoria).font(.subheadline).fontWeight(.semibold).foregroundColor(Color.gray)
                                                
                                                //
                                            }
                                            
                                            
                                            HStack{
                                                Image(systemName: "graduationcap.fill").foregroundColor(Color.black)
                                                
                                                Text(course.nomeDoCurso).lineLimit(3)
                                                    .fontWeight(.light)
                                                    .foregroundColor(Color.black).font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                            }.padding(.bottom, 10)
                                            
                                            //
                                            //                                            Text(course.info_curso)
                                            //                                                .fontWeight(.light)
                                            //                                                .foregroundColor(Color.black).padding(.bottom, 10)
                                            
                                            Text(course.disponibilidade)
                                                .fontWeight(.light)
                                                .foregroundColor(Color.gray)
                                            
                                            Divider()
                                            
                                            HStack{
                                                Image(systemName: "star.fill").foregroundColor(.yellow)
                                                
                                                Text("\(course.nota, specifier: "%.1f")")
                                                    .fontWeight(.light)
                                                    .foregroundColor(Color.black)
                                                Spacer()
                                                Image(systemName: "heart.fill").frame(width: 25, height:23).foregroundColor(.red).background(.white).cornerRadius(15).shadow(radius: 10)
                                                    .padding(.horizontal, 10)
                                            }
                                        }.padding(.vertical, 20).padding(.horizontal, 10)
                                    }
                                }.background(.white)
                            }
                            }.background(.white).cornerRadius(10).shadow(radius: 10).padding(.bottom, 15)
                        
                        }.padding(.horizontal, 20)
                            .onAppear(){courses.fetch()}
                    }
                }
                
            }
        }
    }
}

struct Courses_Previews: PreviewProvider {
    static var previews: some View {
        Courses(filter: "")
    }
}
