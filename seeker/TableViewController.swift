//
//  TableViewController.swift
//  seeker
//
//  Created by Rachel Markell on 2/7/16.
//  Copyright (c) 2016 SARD. All rights reserved.
//

import UIKit
import Firebase

class TableViewController: UITableViewController {
    
   // let names = ["Rachel", "Sam"]
    var names : [String] = []
    let user = User.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var profileUserName = self.user.profileUserName
        
        var url = "https://boiling-inferno-2905.firebaseio.com/userName"
        let ref = Firebase(url: url)
        let userRef = ref.childByAppendingPath(profileUserName)
        userRef.observeSingleEventOfType(.Value, withBlock: {snapshot in
            let obj = snapshot.value["connections"]
            if(obj != nil){
                if let dict = obj as? Dictionary<String, AnyObject> {
                    var i = 0
                    for (k,v) in dict{
                        var val = v as Dictionary<String,String>
                        self.names.append(val["username"]!)
                    }
                }
                
            }
            
        })

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView)-> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel!.text = names[indexPath.row]
        
        // Configure the cell...
      // cell.textLabel.text = self.tableData[indexPath.row]

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
