//
//  DescricaoFilme.swift
//  FilmesLista
//
//  Created by Renilson Moreira Ferreira on 30/03/21.
//  Copyright © 2021 Renilson Moreira Ferreira. All rights reserved.
//

import UIKit

class DescricaoFilme: NSObject {

    let titulo:String
    let rating:Double
    let sinopse:String
    let filme:Filme

    init(titulo:String, rating:Double, sinopse:String, filme:Filme){
        self.titulo = titulo
        self.rating = rating
        self.sinopse = sinopse
        self.filme = filme
    }
}
