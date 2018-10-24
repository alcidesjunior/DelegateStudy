//
//  PessoaDetailsViewController.swift
//  DelegateStudy
//
//  Created by Alcides Junior on 24/10/18.
//  Copyright © 2018 Alcides Junior. All rights reserved.
//

import UIKit

class PessoaDetailsViewController: UIViewController {

    @IBOutlet weak var nomeDetail: UILabel!
    @IBOutlet weak var dtNascDetail: UILabel!
    var pessoaDelegate: PessoaDelegate?
    let dateFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "dd/mm/yyyy" //Your date format
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
        nomeDetail.text = pessoaDelegate?.getPessoa().nome
        dtNascDetail.text = dateFormatter.string(from: (pessoaDelegate?.getPessoa().dt_nascimento)!)
    }

}

 
