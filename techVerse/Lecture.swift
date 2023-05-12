
import Foundation
//struct Precos : Decodable {
//    var preco : Double
//}
//
//struct Categoria : Decodable {
//    var categoria : String
//}

struct Lecture : Decodable {
    var _id : String
    var nome_palestrante : String
    var info_palestrante : String
    var nome_palestra : String
    var info_palestra : String
    var dia : String
    var local : String
    var horario: String
    var categoria: String
    var link_pagina_oficial: String
    var organizacao : String
    var ingresso : Bool
//    var preco: Precos
    var imagem: String
    var nota: Double
}

class ViewModelLec: ObservableObject{
@Published var chars: [Lecture] = []
func fetch(){
    guard let url = URL(string: "http://127.0.0.1:1880/listarLec") else {
        return
    }
    
    let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
        guard let data = data, error == nil else{
            return
        }
        
        do {
            let parsed = try JSONDecoder().decode([Lecture].self, from: data)
            
            DispatchQueue.main.async {
                self?.chars = parsed
            }
        }catch{
                print(error)
            }
        }
        task.resume()
    }
}
