//
//  Jobs.swift
//  techVerse
//
//  Created by Student24 on 11/05/23.
//

import SwiftUI

struct Jobs: View {
    @StateObject var jobs = ViewModelJob()
    var filter: String?

    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading){
                        
                        VStack(alignment: .trailing){
                            Text("Home / Oportunidades / Vagas").foregroundColor(.gray).padding([.leading, .bottom], 22.0)
                        }
                        
                        VStack(alignment: .leading){
                            ForEach(jobs.chars, id: \._id){
                                job in
                                
                                if(job.categoria == filter || filter == nil){
                                NavigationLink(destination: DetailsJob(job: job)){
                                    HStack{
                                        VStack(alignment: .trailing){
                                            AsyncImage(url: URL(string: job.imagem)){
                                                image in image.resizable().frame(width: 150, height: 185)
                                            } placeholder: {
                                                ProgressView()
                                            }
                                        }.padding(10).cornerRadius(45)
                                        
                                        VStack(alignment: .leading){
                                            
                                            HStack{
                                                Text(job.categoria).font(.subheadline).fontWeight(.semibold).foregroundColor(Color.gray)
                                                
                                                //
                                            }
                                            
                                            
                                            HStack{
                                                Image(systemName: "graduationcap.fill").foregroundColor(Color.black)
                                                
                                                Text(job.nomeVaga).lineLimit(3)
                                                    .fontWeight(.light)
                                                    .foregroundColor(Color.black).font(.subheadline)
                                                    .multilineTextAlignment(.leading)
                                            }.padding(.bottom, 10)
                                               
                                            Text(job.modalidade)
                                                .fontWeight(.light)
                                                .foregroundColor(Color.gray)
                                            
                                            Divider()
                                            
                                            HStack{
                                                Image(systemName: "person.fill").foregroundColor(.yellow)
                                                
                                                Text(job.nivel_xp)
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
                            .onAppear(){jobs.fetch()}
                    }
                }
                
            }
        }
    }
}

struct Jobs_Previews: PreviewProvider {
    static var previews: some View {
        Jobs()
    }
}
