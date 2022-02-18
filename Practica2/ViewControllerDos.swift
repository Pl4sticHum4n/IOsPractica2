//
//  ViewControllerDos.swift
//  Practica2
//
//  Created by mac16 on 16/02/22.
//

import UIKit

class ViewControllerDos: UIViewController {

    var recibirNombre: String? //especifica que la variable es opcional
    var recibirEdad: Int?
    
    @IBOutlet weak var imageAccess: UIImageView!
    @IBOutlet weak var msgName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Modifico el texto del label msgMame
        msgName.text = recibirNombre
        print(recibirNombre ?? "No hay datos")
        print(recibirEdad ?? 0)
        // Do any additional setup after loading the view.
        if recibirEdad! >= 18 {
            self.view.backgroundColor = UIColor.green
            msgName.text = "\(recibirNombre!) mayor de edad"
            imageAccess.image = UIImage(named: "2")
            print("Mayor de edad")
        } else {
            imageAccess.image = UIImage(named: "3")
            self.view.backgroundColor = UIColor.red
            msgName.text = "\(recibirNombre!) menor de edad"
            print("Menor de edad")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func regresarBtn(_ sender: UIButton) {
        dismiss(animated: true){
            print("Regreso a la pantalla principal")
        }
    }
    @IBAction func salirBtn(_ sender: UIButton) {
        exit(0)
    }
    
}
