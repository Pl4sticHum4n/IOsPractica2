//
//  ViewController.swift
//  Practica2
//
//  Created by mac16 on 16/02/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nombreTF: UITextView!
    @IBOutlet weak var edadTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func enviarBtn(_ sender: UIButton) {
        print("Enviar")
        
        performSegue(withIdentifier: "enviarTexto", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarTexto" {
            let objetoDestino = segue.destination as! ViewControllerDos
            objetoDestino.recibirNombre = nombreTF.text
            objetoDestino.recibirEdad = Int(edadTF.text!) ?? 0
        }
    }
    
}

