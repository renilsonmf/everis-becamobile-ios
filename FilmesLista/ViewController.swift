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




class ViewController: UIViewController, UITableViewDataSource{
    
    final let url = URL(string: "https://api.themoviedb.org/3/trending/all/week?api_key=8b26d70a68f1379627029b51b9dc87c5&language=pt-BR")
    
   private var results = [Result]()
   @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeRequest()
        

    }
    
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
                    self.tableView.reloadData()
                }
            }catch{
                print("Erro!! após puxar os dados da api")
            }
            
            
    }.resume()
        
 }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FilmeCell") as? FilmeCell else {return UITableViewCell()}
    
        cell.tituloLabel.text = results[indexPath.row].title
        
        return cell
        
    }
}
    

    
    

