//
//  DetailViewController.swift
//  TiendaP1
//
//  Created by Ikani Lab on 06/10/18.
//  Copyright © 2018 Ikani Lab. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    @IBOutlet weak var imagenDetail: UIImageView!
    @IBOutlet weak var nombreProducto: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    @IBOutlet weak var precioProducto: UILabel!
    @IBOutlet weak var cantidadProductos: UILabel!
    
    var contProductos = 1

    @IBAction func sumaProductos(_ sender: Any) {
        contProductos+=1
        
        cantidadProductos.text = "\(contProductos)"
    }
    
    @IBAction func restaProductos(_ sender: Any) {
        contProductos-=1
        cantidadProductos.text = "\(contProductos)"
        if contProductos < 1{
            contProductos = 1
            cantidadProductos.text = "\(contProductos)"
        }
    }
    
     var precioPagar = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nombreProducto.text = productItem[IndexP].nombre
        imagenDetail.image = UIImage(named: productItem[IndexP].imagen )
        descripcion.text = "Main Description\n\n\(productItem[IndexP].desc)"
        precioProducto.text = "$\(productItem[IndexP].precio)"
    }
    
    @IBAction func AgregarCarrito(_ sender: Any) {
        
        precioPagar = Double((contProductos))*(productItem[IndexP].precio)
        
        
        let optionMenu = UIAlertController(title: "Agregar al Carrito", message: "El precio es: $\(precioPagar) ¿Desea continuar?", preferredStyle: .alert)
        
        let yesAction = UIAlertAction(title: "Si", style: .default, handler: {(action: UIAlertAction) -> Void in
            
            cuentaTotal = cuentaTotal + self.precioPagar
            let newDiscList = ProductoComprado(nombre: productItem[IndexP].nombre, precioTotal: self.precioPagar, cantidad: Int(self.contProductos), precio: Int(productItem[IndexP].precio))
            
            
            listaProductos.append(newDiscList)
            
            
        } )
        
        let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
        
        optionMenu.addAction(yesAction)
        optionMenu.addAction(noAction)
        
        present(optionMenu, animated: true, completion: nil)
        
    }
    


}
