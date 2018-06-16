//
//  ItensViewController.swift
//  meubar
//
//  Created by Lab on 16/06/2018.
//  Copyright © 2018 Lab. All rights reserved.
//

import UIKit

class ItensViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var TableItem: UITableView!
    
    var menuSelecionado:String?
    
    let petisco = [(nome:"batata frita",descricao:"porção de batata frita",preco:"R$ 10,00",imagem:"fritas"),(nome:"calabresa com fritas",descricao:"porção de batata frita com calabresa",preco:"R$ 15,00",imagem:"calabresa"),(nome:"Carne com Fritas",descricao:"porção de carne de sol com batatas fritas",preco:"R$ 20,00",imagem:"carne")]
    let bebidas = [(nome:"Cerveja",descricao:"longneck",preco:"R$ 5,00",imagem:"cerveja"),(nome:"Refrigerante",descricao:"latinha 330ml",preco:" R$ 4,00",imagem:"refri")]
    
    override func viewDidLoad() {
        
        TableItem.delegate = self
        TableItem.dataSource = self
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var number = 0
        if menuSelecionado == "Bebidas" {
            number = bebidas.count
        }else if menuSelecionado == "Petiscos"{
            number = petisco.count
        }
        return number
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  TableItem.dequeueReusableCell(withIdentifier: "CustomItem") as! CustomItemTableViewCell
        if menuSelecionado == "Bebidas" {
            cell.ItemDescricao.text = bebidas[indexPath.row].nome
            cell.ItemPreco.text = bebidas[indexPath.row].preco
        }else if menuSelecionado == "Petiscos"{
            cell.ItemDescricao.text = petisco[indexPath.row].nome
            cell.ItemPreco.text = petisco[indexPath.row].preco
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetalhe", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destino = segue.destination as? DetalheViewController{
            if menuSelecionado == "Bebidas" {
                destino.descricao = bebidas[(TableItem.indexPathForSelectedRow?.row)!].descricao
                destino.nome = bebidas[(TableItem.indexPathForSelectedRow?.row)!].nome
                destino.imagem = bebidas[(TableItem.indexPathForSelectedRow?.row)!].imagem
                destino.descricao = bebidas[(TableItem.indexPathForSelectedRow?.row)!].descricao
                
            }else if menuSelecionado == "Petiscos"{
                destino.descricao = petisco[(TableItem.indexPathForSelectedRow?.row)!].descricao
                destino.nome = petisco[(TableItem.indexPathForSelectedRow?.row)!].nome
                destino.imagem = petisco[(TableItem.indexPathForSelectedRow?.row)!].imagem
                destino.descricao = petisco[(TableItem.indexPathForSelectedRow?.row)!].descricao
            }
        }
    }
    
    

}
