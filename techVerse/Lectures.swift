//
//  Courses.swift
//  techVerse
//
//  Created by Student06 on 29/04/23.
//

import SwiftUI

struct Lectures: View {
    @StateObject var lectures = ViewModelLec()
    var filter: String?
    
    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading){
                        
                        VStack(alignment: .trailing){
                            
                            Text("Home / Oportunidades / Palestras").foregroundColor(.gray).padding([.leading, .bottom], 22.0)
                        }
   
                        VStack(alignment: .leading){
                            ForEach(lectures.chars, id: \._id){
                                lecture in
                                
                                if(lecture.categoria == filter || filter == nil){
                                    NavigationLink(destination: DetailsLecture(lecture: lecture)){
                                        HStack{
                                            VStack(alignment: .trailing){
                                                AsyncImage(url: URL(string: lecture.imagem)){
                                                    image in image.resizable()
                                                        .scaledToFill()
                                                        .frame(width: 150, height: 150, alignment: .center)
                                                        .clipped()
                                                } placeholder: {
                                                    ProgressView()
                                                }
                                            }.padding(10).cornerRadius(45)
                                            
                                            VStack(alignment: .leading){
                                                
                                                HStack{
                                                    Text(lecture.categoria).font(.subheadline).fontWeight(.semibold).foregroundColor(Color.gray)
                                                    
                                                    //
                                                }
                                                
                                                
                                                HStack{
                                                    Image(systemName: "graduationcap.fill").foregroundColor(Color.black)
                                                    
                                                    Text(lecture.nome_palestra).lineLimit(3)
                                                        .fontWeight(.light)
                                                        .foregroundColor(Color.black).font(.subheadline)
                                                        .multilineTextAlignment(.leading)
                                                }.padding(.bottom, 10)
                                                
                                                //
                                                //                                            Text(course.info_curso)
                                                //                                                .fontWeight(.light)
                                                //                                                .foregroundColor(Color.black).padding(.bottom, 10)
                                                
                                                Text(lecture.local)
                                                    .fontWeight(.light)
                                                    .foregroundColor(Color.gray)
                                                
                                                Divider()
                                                
                                                HStack{
                                                    Image(systemName: "star.fill").foregroundColor(.yellow)
                                                    Text("\(lecture.nota, specifier: "%.1f")")
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
                            .onAppear(){lectures.fetch()}
                    }
                }
                
            }
        }
    }
}

struct Lectures_Previews: PreviewProvider {
    static var previews: some View {
        Lectures(filter: "")
    }
}
