//
//  EpisodeDetailViewController.swift
//  SerienTracker
//
//  Created by Andre Frank on 18.10.18.
//  Copyright © 2018 Daniel Keglmeier. All rights reserved.
//

import UIKit

class EpisodeDetailViewController: UIViewController {
    
    var episode:ShowEpisodenInformation?
    
    @IBOutlet weak var urlLabel: UILabel!
    @IBOutlet weak var summaryTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        summaryTextView.text = episode?.summary
        urlLabel.text = episode?.url
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
