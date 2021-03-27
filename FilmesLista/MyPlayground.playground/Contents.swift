import Foundation
import PlaygroundSupport

// Seta a URL
let url = URL(string: "https://api.themoviedb.org/3/trending/all/week?api_key=8b26d70a68f1379627029b51b9dc87c5&language=pt-BR")!
// faz a requisição retornando data, response, error
let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    //checa se tem erro
    guard error == nil else {
        // Exibe o erro
        print(error?.localizedDescription ?? "")
        // encerra e não executa o restante do código
        return
    }
    // Remove do optional
    if  let data = data,
        // pega o conteudo do JSON converte para string
        let contents = String(data: data, encoding: String.Encoding.utf8) {
        // Printa o JSON como String
        print(contents)
        
    }
    
}
// Encerra a requisição
task.resume()
