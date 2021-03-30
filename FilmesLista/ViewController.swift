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
import AlamofireImage




class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    // MARK: - Outlets
    @IBOutlet weak var colecaoDeFilmes: UICollectionView!
  
    
    
    // MARK: URL da requisição
    final let url = URL(string: "https://api.themoviedb.org/3/trending/all/week?api_key=8b26d70a68f1379627029b51b9dc87c5&language=pt-BR")
    
   private var results = [Result]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        colecaoDeFilmes.dataSource = self
        colecaoDeFilmes.delegate = self
        makeRequest()

    }
    
    // MARK: Requisição
    
    func makeRequest(){
        guard let setandoURL = url else {return}
        URLSession.shared.dataTask(with: setandoURL) { data, URLResponse, error in
            guard let data = data, error == nil, URLResponse != nil else {
                print("Erro!!")
                return
            }
         
            do{
                let decoder = JSONDecoder()
                let selecionaResultado = try decoder.decode(Filme.self, from: data)
                self.results = selecionaResultado.results
                DispatchQueue.main.async {
                    self.colecaoDeFilmes.reloadData()
                }
            }catch{
                print("Erro!! após puxar os dados da api")
            }
            
            
    }.resume()
        
 }
    

    // MARK: - Numero de itens na collection
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return results.count
    }
    
    // MARK:  Conteudo do item
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let celulaPacote = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPacote", for: indexPath) as? PacoteFilmesCollectionViewCell
        celulaPacote?.backgroundColor = UIColor.gray
        celulaPacote?.layer.cornerRadius = 7
        celulaPacote?.layer.borderWidth = 0.5
        celulaPacote?.layer.borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1).cgColor
        
        if results[indexPath.row].title == nil{
            celulaPacote?.tituloLabel.text = results[indexPath.row].name
        }else{
            celulaPacote?.tituloLabel.text = results[indexPath.row].title
        }
        return celulaPacote!
    }

    func collectionView(_ collectionView: UICollectionView, layot collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let larguraCelula = collectionView.bounds.width / 2
        return CGSize(width: larguraCelula-15, height: 160)
    }
    
    }



    

    
    

