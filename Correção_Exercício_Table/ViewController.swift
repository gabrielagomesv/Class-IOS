//
//  ViewController.swift
//  Correção_Exercício_Table
//
//  Created by Usuário Convidado on 13/08/2018.
//  Copyright © 2018 Agesandro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var minhaTable: UITableView!
    
    var filmes = ["Avatar", "O Poderoso Chefão"]
    var imagens = ["avatar.jpeg", "poderoso.jpeg"] // a extensão da imagem não é obrigatória
    var anos = ["1999", "1975"]
    
    var indice:Int = 0 //global
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        celula.textLabel?.text = filmes[indexPath.row]
        celula.imageView?.image = UIImage(named: imagens[indexPath.row])
        celula.detailTextLabel?.text = anos[indexPath.row]
        return celula
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //minhaTable.dataSource = self
        //se fizer a ligação pelo connection inspector não
        //precisa dessa linha
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //UITableViewDelegate
    //Na Main, associar o delegate a ViewController, último icone, metodo delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indice = indexPath.row //recebe o Array
        
        performSegue(withIdentifier: "tableFilmesToDetalheSegue", sender: nil)
        //No nózinho do segue, selecionar o terceiro icone e colar o identifier
    }
    
    //Passa a informaçāo
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let vc = segue.destination as! DetalheViewController //VC é um objeto da tela
        vc.nomeFilme = filmes[indice] //na variável você recupera
        vc.ano = anos[indice]
        vc.imagemFilme = UIImage(named: imagens[indice])
    }

}

