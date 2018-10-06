//
//  TableViewController.swift
//  TiendaP1
//
//  Created by Ikani Lab on 06/10/18.
//  Copyright © 2018 Ikani Lab. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return productItem.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! TableViewCell
        
        
        cell.textLabel?.text = "\(productItem[indexPath.row].nombre) - \(productItem[indexPath.row].precio)"
        cell.imageView?.image = UIImage(named: productItem[indexPath.row].imagen)
        
        
        
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        imageView.contentMode = .scaleAspectFit
        
        let image = UIImage(named: "logo")
        imageView.image = image
        
        navigationItem.titleView = imageView
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailView"{
            if let indexPath = tableView.indexPathForSelectedRow{
                _ = segue.destination as! DetailViewController
                IndexP = indexPath.row
            }
        }
        
    }
    
    
}
