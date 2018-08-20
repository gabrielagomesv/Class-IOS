//
//  ViewController.swift
//  ExemploWebKit
//
//  Created by Usuário Convidado on 20/08/2018.
//  Copyright © 2018 Gabriela Gomes Vieira. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    //Outlet
    @IBOutlet weak var meuWebKit: WKWebView!
    @IBOutlet weak var minhaActivity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        meuWebKit.navigationDelegate = self //delega a ação
        minhaActivity.startAnimating()
        
        let url = URL(string: "https://www.vive.com/us")
        let request = URLRequest(url: url!)
        meuWebKit.load(request)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        minhaActivity.stopAnimating()
        minhaActivity.isHidden = true
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        var msg: String
        msg = "Erro: \(error.localizedDescription)"
        
        let alerta = UIAlertController (
            title: "Aviso",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert)
        
        alerta.addAction(UIAlertAction (
            title: "Ok",
            style: UIAlertActionStyle.default,
            handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }


}

