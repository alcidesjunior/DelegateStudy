//
//  PessoaTableViewCell.swift
//  DelegateStudy
//
//  Created by Alcides Junior on 24/10/18.
//  Copyright © 2018 Alcides Junior. All rights reserved.
//

import UIKit

class PessoaTableViewCell: UITableViewCell {

    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelDTNasc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
