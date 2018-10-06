//
//  TableViewCell2.swift
//  TiendaP1
//
//  Created by Ikani Lab on 06/10/18.
//  Copyright © 2018 Ikani Lab. All rights reserved.
//

import UIKit

class TableViewCell2: UITableViewCell {
@IBOutlet weak var nameProduct: UILabel!
@IBOutlet weak var countProduct: UILabel!
@IBOutlet weak var moneyProduct: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
