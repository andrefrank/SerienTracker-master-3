//
//  EpListViewCell.swift
//  SerienTracker
//
//  Created by Andre Frank on 18.10.18.
//  Copyright © 2018 Daniel Keglmeier. All rights reserved.
//

import UIKit

class EpListViewCell: UITableViewCell {
    
    @IBOutlet weak var epName: UILabel!
    
    @IBOutlet weak var coverLabel: UILabel!
    
    var cellInfo:ShowEpisodenInformation?{

        didSet{
            epName.text = cellInfo?.name
            coverLabel.text = cellInfo?.airdate
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
