//
//  DetailViewController.swift
//  iPlanet
//
//  Created by Arizal Pratama Tanu Andara on 18/08/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var namePlanet: UILabel!
    @IBOutlet weak var photoPlanet: UIImageView!
    @IBOutlet weak var descPlanet: UILabel!
    
    // Digunakan untuk menampung data Hero
        var planet: Planet?
        
        override func viewDidLoad() {
            super.viewDidLoad()
           
            // Digunakan untuk menetapkan nilai hero ke beberapa view yang ada
            if let result = planet {
                photoPlanet.image = result.photo
                namePlanet.text = result.name
                descPlanet.text = result.description
            }
        }
    }
