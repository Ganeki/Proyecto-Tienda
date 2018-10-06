//
//  Pago.swift
//  TiendaP1
//
//  Created by Ikani Lab on 06/10/18.
//  Copyright © 2018 Ikani Lab. All rights reserved.
//

import UIKit

class Pago: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var productosCarrito: UITableView!
    @IBOutlet weak var TotalCuenta: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TotalCuenta.text = "Total: $\(String(cuentaTotal))"
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaProductos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "celdaCuenta"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell2
        
        cell.nameProduct.text = listaProductos[indexPath.row].nombre
        cell.countProduct.text = String (listaProductos[indexPath.row].cantidad)
        cell.moneyProduct.text = "$\(String (listaProductos[indexPath.row].precioTotal))"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceview, completionHandler) in
            
            cuentaTotal = cuentaTotal - listaProductos[indexPath.row].precioTotal
            listaProductos.remove(at: indexPath.row)
            self.productosCarrito.deleteRows(at: [indexPath], with: .fade )
            completionHandler(true)
            
            
            
        }
        
        
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
        
        TotalCuenta.text = "Total: $\(String(cuentaTotal))"
        return swipeConfiguration
    }
    


}
