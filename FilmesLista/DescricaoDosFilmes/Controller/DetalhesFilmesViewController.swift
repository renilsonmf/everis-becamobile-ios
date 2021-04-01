//
//  DetalhesFilmesViewController.swift
//  FilmesLista
//
//  Created by Renilson Moreira Ferreira on 30/03/21.
//  Copyright © 2021 Renilson Moreira Ferreira. All rights reserved.
//

import UIKit

class DetalhesFilmesViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var imagemDetalheFilme: UIImageView?
    @IBOutlet weak var labelTituloFilme: UILabel?
    @IBOutlet weak var labelRatingFilme: UILabel?
    @IBOutlet weak var labelSinopseFilme: UITextView?
    
    //MARK: - Lista informações do filme selecionado
    
    var filmeSelecionado:Result? = nil
    override func viewDidLoad() {
        super.viewDidLoad()        
        if let filme = filmeSelecionado{
            
            let urlDaImagem = filme.posterPath
            let imagem = URL(string: "https://image.tmdb.org/t/p/original/\(urlDaImagem)")
            self.imagemDetalheFilme?.af_setImage(withURL: imagem!)
            
            if (filme.title) == nil{
                self.labelTituloFilme?.text = filme.name
            }else{
                self.labelTituloFilme?.text = filme.title
            }
            self.labelRatingFilme?.text = String ("Avaliação: \(filme.voteAverage)")
            self.labelSinopseFilme?.text = filme.overview
        }
    }
    
    //MARK: - Button Action, volta a tela principal
    
    @IBAction func botaoVoltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    


}
