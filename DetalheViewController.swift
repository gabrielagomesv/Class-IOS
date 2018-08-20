//
//  DetalheViewController.swift
//  Correção_Exercício_Table
//
//  Created by Usuário Convidado on 20/08/2018.
//  Copyright © 2018 Agesandro. All rights reserved.
//

import UIKit

class DetalheViewController: UIViewController {

    //Outlet
    @IBOutlet weak var labelFilmes: UILabel!
    @IBOutlet weak var labelAno: UILabel!
    
    @IBOutlet weak var labelImagem: UIImageView!
    
    var nomeFilme:String = "" //global
    var ano:String = ""
    var imagemFilme:UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelFilmes.text = nomeFilme //labelFilmes recebe nomeFilme
        labelAno.text = ano
        labelImagem.image = imagemFilme!

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //

/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    //Passa a informaçāo
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
*/

}
