//
//  TourTableViewCell.swift
//  Book & Go
//
//  Created by Kha Pham on 1/9/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

class TourTableViewCell: UITableViewCell {

    @IBOutlet weak var TenTour: UILabel!
    @IBOutlet weak var Rating: UILabel!
    @IBOutlet weak var Gia: UILabel!
    @IBOutlet weak var TichDiem: UILabel!
    @IBOutlet weak var TourImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

