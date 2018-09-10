//
//  ViewController.swift
//  Exercicio_json
//
//  Created by Usuário Convidado on 10/09/2018.
//  Copyright © 2018 Gabriela Gomes Vieira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtCEP: UITextField!
    @IBOutlet weak var txtLogradouro: UITextField!
    @IBOutlet weak var txtBairro: UITextField!
    @IBOutlet weak var txtCidade: UITextField!
    @IBOutlet weak var txtEstado: UITextField!
    
    
    //variável
    var session:URLSession?
    
    @IBAction func ok(_ sender: Any) {
        //Cria uma configuraçāo padrao
        let config = URLSessionConfiguration.default
        
        //cria uma sessao com a configuracao default criada acima
        session = URLSession(configuration: config)
        
        //cria uma url para buscar os dados
        let url = URL(string: "https://viacep.com.br/ws/" + txtCEP.text! + "/json/")
        
        let task = session?.dataTask(with: url!, completionHandler: { (data, response, error) in
            
            if let nCEP = self.retornar(data: data!, chave: "cep") {
                DispatchQueue.main.async {
                    self.txtCEP.text = nCEP
                }
            }
            
            if let nLogradouro = self.retornar(data: data!, chave: "logradouro") {
                DispatchQueue.main.async {
                    self.txtLogradouro.text = nLogradouro
                }
            }
            
            if let nBairro = self.retornar(data: data!, chave: "bairro") {
                DispatchQueue.main.async {
                    self.txtBairro.text = nBairro
                }
            }
            
            if let nCidade = self.retornar(data: data!, chave: "localidade") {
                DispatchQueue.main.async {
                    self.txtCidade.text = nCidade
                }
            }
            
            if let nEstado = self.retornar(data: data!, chave: "uf") {
                DispatchQueue.main.async {
                    self.txtEstado.text = nEstado
                }
            }
        })
        
        //exec task
        task?.resume()
    
    }
    
    func retornar(data:Data, chave:String)->String?{
        var resposta:String?=nil
        
        do {
            //a linha abaixo faz a leitura dos valores do JSON
            //NSJSONSerializable faz o Parser do JSON
            //[String: AnyObject] --> hash
            let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String: AnyObject]
            
            if let nomeRetorno = json[chave] as? String{
                resposta = nomeRetorno
            }
        } catch let error as NSError {
            resposta = "Falha ao carregar\(error.localizedDescription)"
        }
        
        return resposta
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

