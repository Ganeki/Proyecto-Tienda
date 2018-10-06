//
//  Producto.swift
//  TiendaP1
//
//  Created by Ikani Lab on 06/10/18.
//  Copyright © 2018 Ikani Lab. All rights reserved.
//

import Foundation

import Foundation

struct Producto{
    var nombre: String
    var desc: String
    var precio: Double
    var imagen: String
}
var IndexP = 0

let speaker = Producto(nombre: "Enterprise NCC-1701-D Bluetooth® Speaker",
                       desc: "With engine noise emulator, LEDs, and sound effects",
                       precio: 59.99,
                       imagen: "speaker")
let walkman = Producto(nombre: "Star-Lord's Walkman with Headphones",
                       desc: "Connect your phone or MP3 player and play your own tunes",
                       precio: 39.99,
                       imagen: "walkman")
let carCharger = Producto(nombre: "Back to the Future Mr. Fusion Car Charger",
                          desc: "Two USB charging ports each of which provide 2.1 Amps (enough to charge 2 tablets simultaneously)",
                          precio: 9.99,
                          imagen: "charger")
let switchConsole = Producto(nombre: "Nintendo Switch Gray w/BotW + Shield Backpack",
                             desc: "You get a Nintendo Switch",
                             precio: 419.99,
                             imagen: "nintendo")
let lamp = Producto(nombre: "Marvel Thanos Gauntlet Mood Lamp",
                    desc: "Infinity Gauntlet whose gems light up when turned on",
                    precio: 39.99,
                    imagen: "lamp")
let arcade = Producto(nombre: "Tiny Arcade - Licensed Retro Games",
                      desc: "Tiny, retro arcade cabinets based on 80s video games",
                      precio: 19.99,
                      imagen: "arcade")

var productItem = [speaker,walkman,carCharger,switchConsole,lamp,arcade]
