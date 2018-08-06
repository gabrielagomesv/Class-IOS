//
//  ViewController.swift
//  TableView_Exercicio01
//
//  Created by Usuário Convidado on 06/08/2018.
//  Copyright © 2018 Gabriela Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var minhaTableView: UITableView!
    let filmes = ["animaisfantasticos", "harrypotter"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Protocolos
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseidentifier", for: indexPath)
        celula.imageView?.image = UIImage(named: filmes[indexPath.row])
        return celula
    }
}

