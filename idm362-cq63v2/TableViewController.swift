//
//  TableViewController.swift
//  idm362-cq63v2
//
//  Created by Quynh Quach on 3/16/23.
//

import UIKit

class TableViewController: UITableViewController {
    var pNames: [String] = ["Prosperitree", "Bob", "Cacti Patra"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = pNames[indexPath.row]
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    //Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
         pNames.remove(at: indexPath.row)
         tableView.reloadData()
     }
     }
     
    
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
    
    
    @IBAction func addPlant(_ sender: Any) {
        //Create an alert to add more plant
        let alertObj = UIAlertController(title:"New Plant", message: "Add your new Plant", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default) {
        [unowned self] action in
        guard let textField = alertObj.textFields?.first,
              let nameToSave = textField.text else {
            return
        }
        //Update array
        self.pNames.append(nameToSave)
        //Reload table
        self.tableView.reloadData()
    }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
    alertObj.addTextField()
    alertObj.addAction(saveAction)
    present(alertObj, animated:true)
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
