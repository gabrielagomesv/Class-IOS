//
//  ViewController.swift
//  Tableview_Exemplo1
//
//  Created by Usuário Convidado on 06/08/2018.
//  Copyright © 2018 Gabriela Gomes. All rights reserved.
//

import UIKit

//UITableViewDataSouce = protocolo que popula a tabela
//UITableViewDelegate = interage com a tabela

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var minhaTableView: UITableView!
    let animal = ["Urso", "Rinoceronte", "Leāo", "Girafa"]
    let imgAnimais = ["urso.png", "rino.png", "leao.png", "girafa.png"]
    
    //alternativa para criar array de imagens
    let imgAnimais2 = [#imageLiteral(resourceName: "urso"), #imageLiteral(resourceName: "rino"), #imageLiteral(resourceName: "leao"), #imageLiteral(resourceName: "girafa")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Delegation by code - dispensa fazer pelo Connection inspector
            //minhaTableView.dataSource = self
            //minhaTableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Chamando os metodos obrigatórios dos protocolos UiTableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    //Sera executado 3 vezes
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseidentifier", for: indexPath)
//        celula.textLabel?.text = "Bom dia! Item número \(indexPath.row)"
//        celula.imageView?.image = UIImage(named: "corinthians.png") // a extensāo nāo é obrigatório
        celula.textLabel?.text = animal[indexPath.row] //retornando os animais do array
        celula.imageView?.image = UIImage(named: imgAnimais[indexPath.row])
        
        //alternativa array
        //celula.imageView?.image = "imgAnimais2[indexPath.row]"
        
        return celula
    }
    
    //-------------------------------------------------------------------------------------------------
    // Assinaturas do UiTableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let msg = "Você selecionou o animal \(animal[indexPath.row])"
        
        let alerta = UIAlertController(
            title: "Aviso",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert)
        
        alerta.addAction(UIAlertAction(
            title: "Ok",
            style: UIAlertActionStyle.default,
            handler: { (action) in tableView.deselectRow(at: indexPath, animated: true) }))
        
        present(alerta, animated: true, completion: nil)
    }
    
    //-------------------------------------------------------------------------------------------------
    // Alterar as propriedades de altura.
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10 //altura do rodapé (footer)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70 //altura do cabeçalho (header)
    }
    
    //-------------------------------------------------------------------------------------------------
    // Colocar imagens no header e no footer
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cabec = UIImageView(image: UIImage(named: "cabecalho.png"))
        return cabec
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let rodape = UIImageView(image: UIImage(named: "rodape.png"))
        return rodape
    }
}

