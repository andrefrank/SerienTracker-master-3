//
//  ViewController.swift
//  SerienTracker
//
//  Created by Daniel Keglmeier on 13.10.18.
//  Copyright © 2018 Daniel Keglmeier. All rights reserved.
//

import UIKit


class EpListViewController: UITableViewController{

    let cellId="epListCell"
    
    var showepList = ShowEpListApi()
    var showMainApi = ShowMainApi()
    var episodeArray = [ShowEpisodenInformation]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        showMainApi.getShowOverview(id: 1) { (showInfo) in
            if let showInfo = showInfo{
            print(showInfo.showId)
            print(showInfo.showName )
            print(showInfo.showStatus)
            print(showInfo.showPremiered)
            print(showInfo.showSummary)
                }
    }

        showepList.getEpList(id: 3) {[weak self] (epList) in
            guard let epList=epList, epList.count>0 else {return}
                
                self?.episodeArray=epList
                self?.tableView.reloadData()
        }
    }
}


extension EpListViewController{
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return episodeArray.count
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "epListCell", for: indexPath) as! EpListViewCell
     
        
     // Configure the cell...
        let cellInfo = episodeArray[indexPath.row]
        
        cell.cellInfo=cellInfo
     
        return cell
     }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */

}

extension EpListViewController{
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC=segue.destination as? EpisodeDetailViewController else {return}
        guard let indexPath=tableView.indexPath(for: sender as! EpListViewCell) else {return}
    
        destVC.episode=episodeArray[indexPath.row]
        
        
    }
    
}

