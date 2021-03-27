//
//  ViewController.swift
//  FilmesLista
//
//  Created by Renilson Moreira Ferreira on 26/03/21.
//  Copyright © 2021 Renilson Moreira Ferreira. All rights reserved.
//

import UIKit
import Foundation
import Alamofire




class ViewController: UIViewController {

    var listaDeFilmes: Array<String> = []
    
    override func viewDidLoad() {
        makeRequest()
    }
    
    private func makeRequest(){
        let url = URL(string: "https://api.themoviedb.org/3/trending/all/week?api_key=8b26d70a68f1379627029b51b9dc87c5&language=pt-BR")!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
              guard let responseData = data else {return}
        
            do{
                
                let result = try JSONDecoder().decode(FilmeAPI.self, from: responseData)
                let resultado = result.results
                
                
    
                for filme in resultado{
                    if filme.title == nil{
                        guard let titulo = filme.name else {return}
                        let caminhoImage = filme.posterPath
                        let caminhoPoster = "https://image.tmdb.org/t/p/w500\(caminhoImage)"
                        self.listaDeFilmes.append(titulo)
                    }else{
                        guard let titulo = filme.title else {return}
                        let caminhoImage = filme.posterPath
                        let caminhoPoster = "https://image.tmdb.org/t/p/w500\(caminhoImage)"
                        self.listaDeFilmes.append(titulo)
                    }
                    
                    
                    
                }
            }catch let error{
                
                print("error: \(error)")
            }
            print(self.listaDeFilmes)

        }
        
        task.resume()
    }
    
}
        
        
    

    
    

