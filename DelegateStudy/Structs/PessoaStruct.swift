//
//  Pessoas.swift
//  DelegateStudy
//
//  Created by Alcides Junior on 24/10/18.
//  Copyright © 2018 Alcides Junior. All rights reserved.
//

import Foundation

struct PessoaStruct{
    var nome: String
    var dt_nascimento: Date
    init(_ nome: String, _ dt_nasc: Date){
        self.nome = nome
        self.dt_nascimento = dt_nasc
    }
}
