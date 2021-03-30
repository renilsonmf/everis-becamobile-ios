//
//  DetalhesFilmesViewController.swift
//  FilmesLista
//
//  Created by Renilson Moreira Ferreira on 30/03/21.
//  Copyright © 2021 Renilson Moreira Ferreira. All rights reserved.
//

import UIKit

class DetalhesFilmesViewController: UIViewController {

    @IBOutlet weak var imagemDetalheFilme: UIImageView!
    @IBOutlet weak var labelTituloFilme: UILabel!
    @IBOutlet weak var labelRatingFilme: UILabel!
    @IBOutlet weak var labelSinopseFilme: UITextView!
    
    var filmeSelecionado:Result? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let filme = filmeSelecionado{
            self.imagemDetalheFilme.image = UIImage(named: filme.posterPath)
            self.labelTituloFilme.text = filme.title
            self.labelRatingFilme.text = String (filme.voteAverage)
            self.labelSinopseFilme.text = filme.overview
        }
    }
    
    @IBAction func botaoVoltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    


}
