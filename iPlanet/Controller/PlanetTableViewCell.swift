//
//  PlanetTableViewCell.swift
//  iPlanet
//
//  Created by Arizal Pratama Tanu Andara on 18/08/21.
//

import UIKit

class PlanetTableViewCell: UITableViewCell {

    @IBOutlet weak var photoPlanet: UIImageView!
    @IBOutlet weak var namePlanet: UILabel!
    @IBOutlet weak var descPlanet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
