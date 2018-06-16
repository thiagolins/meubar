//
//  CustomItemTableViewCell.swift
//  meubar
//
//  Created by Lab on 16/06/2018.
//  Copyright © 2018 Lab. All rights reserved.
//

import UIKit

class CustomItemTableViewCell: UITableViewCell {

    
    @IBOutlet weak var ItemDescricao: UILabel!
    @IBOutlet weak var ItemPreco: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
