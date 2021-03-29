//
//  Filme.swift
//  FilmesLista
//
//  Created by Renilson Moreira Ferreira on 29/03/21.
//  Copyright © 2021 Renilson Moreira Ferreira. All rights reserved.
//

import UIKit

class FilmeCell: UITableViewCell {

    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
