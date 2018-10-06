//
//  ProductoSeleccionado.swift
//  TiendaP1
//
//  Created by Ikani Lab on 06/10/18.
//  Copyright © 2018 Ikani Lab. All rights reserved.
//

import Foundation
import UIKit

struct ProductoComprado {
    var nombre: String
    var precioTotal: Double
    var cantidad: Int
    var precio: Int
}

var cuentaTotal: Double = 0.0

var listaProductos: [ProductoComprado] = []
