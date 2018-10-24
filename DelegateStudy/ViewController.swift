//
//  ViewController.swift
//  DelegateStudy
//
//  Created by Alcides Junior on 24/10/18.
//  Copyright © 2018 Alcides Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let dateFormatter = DateFormatter()
    
    var pessoas: [PessoaStruct]=[]
    var currentPessoa: PessoaStruct?
    
    @IBOutlet weak var pessoasTableView: UITableView!{
        didSet{
            pessoasTableView.rowHeight = 75
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.seedPessoas()
        pessoasTableView.delegate = self
        pessoasTableView.dataSource = self
    }
    
    func seedPessoas(){
        dateFormatter.dateFormat = "dd/mm/yyyy" //Your date format
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
        self.pessoas.append(PessoaStruct.init("Alcides", dateFormatter.date(from: "14/08/1994")!))
        self.pessoas.append(PessoaStruct.init("Alice", dateFormatter.date(from: "22/04/2002")!))
        self.pessoas.append(PessoaStruct.init("Izac", dateFormatter.date(from: "14/09/2000")!))
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource, PessoaDelegate{
    func getPessoa()->PessoaStruct {
        return self.currentPessoa!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.pessoas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = pessoasTableView.dequeueReusableCell(withIdentifier: "CellPessoas") as! PessoaTableViewCell
        
        cell.labelNome.text = pessoas[indexPath.item].nome
        cell.labelDTNasc.text = dateFormatter.string(from: pessoas[indexPath.item].dt_nascimento)
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let controller = storyboard?.instantiateViewController(withIdentifier: "PessoaDetails") as? PessoaDetailsViewController else { return }
        self.currentPessoa = pessoas[indexPath.item]
        controller.pessoaDelegate = self
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
}
