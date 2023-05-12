
import Foundation

struct Job : Decodable{
    var _id : String
    var nomeVaga : String
    var info_vaga : String
    var categoria : String
    var nivel_xp : String
    var local : String
    var modalidade : String
    var imagem: String
    var empresa: String
    var link: String
}

class ViewModelJob: ObservableObject{
@Published var chars: [Job] = []
    
func fetch(){
    guard let url = URL(string: "http://127.0.0.1:1880/listarJobs") else {
        return
    }
    
    let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
        guard let data = data, error == nil else{
            return
        }
        
        do {
            let parsed = try JSONDecoder().decode([Job].self, from: data)
            
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
