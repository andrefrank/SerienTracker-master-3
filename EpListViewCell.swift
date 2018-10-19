//
//  EpListViewCell.swift
//  
//
//  Created by Andre Frank on 18.10.18.
//

import UIKit

class EpListViewCell: UITableViewCell {
    
    
    var cellInfo:ShowEpisodenInforamtion{
        
        didSet{
            
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
