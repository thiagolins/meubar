//
//  DetalheViewController.swift
//  meubar
//
//  Created by Lab on 16/06/2018.
//  Copyright © 2018 Lab. All rights reserved.
//

import UIKit

class DetalheViewController: UIViewController {

    var nome:String?
    var preco:String?
    var imagem:String?
    var descricao:String?
    
    @IBOutlet weak var imgDetalhe: UIImageView!
    @IBOutlet weak var nomeDetalhe: UILabel!
    @IBOutlet weak var descricaoDetalhe: UILabel!
    @IBOutlet weak var valorDetalhe: UILabel!
    
    override func viewDidLoad() {
        
        self.imgDetalhe.image = UIImage(named : imagem!)
        self.nomeDetalhe.text = nome
        self.descricaoDetalhe.text = descricao
        self.valorDetalhe.text = preco
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
