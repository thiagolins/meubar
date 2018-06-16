//
//  menuViewController.swift
//  meubar
//
//  Created by Lab on 16/06/2018.
//  Copyright © 2018 Lab. All rights reserved.
//

import UIKit

class menuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var TableMenu: UITableView!
    
    let menu = [(nome:"Petiscos",img:"petiscos"),(nome:"Bebidas",img:"bebidas")]
    override func viewDidLoad() {
        TableMenu.delegate = self
        TableMenu.dataSource = self
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableMenu.dequeueReusableCell(withIdentifier: "CustomMenu") as! CustomMenuTableViewCell
        cell.MenuLabel.text = menu[indexPath.row].nome
        cell.MenuImg.image = UIImage(named: menu[indexPath.row].img)
        cell.MenuImg.layer.cornerRadius = cell.MenuImg.frame.height / 2
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showMenu", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destino = segue.destination as? ItensViewController{
            destino.menuSelecionado = menu[(TableMenu.indexPathForSelectedRow?.row)!].nome
        }
    }
  

}
