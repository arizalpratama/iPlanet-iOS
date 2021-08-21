//
//  ViewController.swift
//  iPlanet
//
//  Created by Arizal Pratama Tanu Andara on 18/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var planetTableView: UITableView!
    @IBOutlet weak var profileButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        // Menambahkan title pada Navigation
        self.navigationItem.title = "Galaxy Bimasakti"
        
        //Profile Image
        profileButton.image = UIImage(named: "profile")
            
        // Menghubungkan planetTableView dengan ke dua metode di bawah
        planetTableView.dataSource = self
            
        // Menambahkan delegate ke table view
        planetTableView.delegate = self
            
        // Menghubungkan berkas XIB untuk PlanetTableViewCell dengn heroTableView.
        planetTableView.register(UINib(nibName: "PlanetTableViewCell", bundle: nil), forCellReuseIdentifier: "PlanetCell")
    }
    @IBAction func showProfile(_ sender: UIBarButtonItem) {
        let profile = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        self.navigationController?.pushViewController(profile, animated: true)
    }
    
}
    extension ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // Digunakan untuk menambahkan total item yang akan muncul di dalam Table View
            return planets.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // Digunakan untuk menghubungkan cell dengan identifier "HeroCell"
            if let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCell", for: indexPath) as? PlanetTableViewCell {
            
                // Menetapkan nilai hero ke view di dalam cell
                let planet = planets[indexPath.row]
                cell.namePlanet.text = planet.name
                cell.descPlanet.text = planet.description
                cell.photoPlanet.image = planet.photo
            
                // Kode ini digunakan untuk membuat imageView memiliki frame bound/lingkaran
                cell.photoPlanet.layer.cornerRadius = cell.photoPlanet.frame.height / 2
                cell.photoPlanet.clipsToBounds = true
                return cell
            } else {
                return UITableViewCell()
            }
        }
    }

extension ViewController: UITableViewDelegate {
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Memanggil View Controller dengan berkas NIB/XIB di dalamnya
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        // Mengirim data hero
        detail.planet = planets[indexPath.row]
        
        // Push/mendorong view controller lain
        self.navigationController?.pushViewController(detail, animated: true)
    }
}

