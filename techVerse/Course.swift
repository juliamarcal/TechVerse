
import Foundation

struct Course : Decodable{
    var _id : String
    var nomeDoCurso : String
    var info_curso : String
    var categoria : String
    var custo : String
    var duracao : String
    var certificado : String
    var imagem: String
    var disponibilidade: String
    var nota: Double
    var organizacao : String
    var link: String
}



class ViewModel: ObservableObject{
@Published var chars: [Course] = []
    
func fetch(){
    guard let url = URL(string: "http://127.0.0.1:1880/listar") else {
        return
    }
    
    let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
        guard let data = data, error == nil else{
            return
        }
        
        do {
            let parsed = try JSONDecoder().decode([Course].self, from: data)
            
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
