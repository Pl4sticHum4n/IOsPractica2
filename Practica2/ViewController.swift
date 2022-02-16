//
//  ViewController.swift
//  Practica2
//
//  Created by mac16 on 16/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreTF: UIStackView!
    @IBOutlet weak var edadTF: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enviarBtn(_ sender: UIButton) {
        print("Enviar")
        performSegue(withIdentifier: "enviarTexto", sender: self)
    }
    
}

