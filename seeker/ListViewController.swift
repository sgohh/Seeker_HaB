//
//  ListViewController.swift
//  seeker
//
//  Created by Rachel Markell on 2/6/16.
//  Copyright (c) 2016 SARD. All rights reserved.
//
/*
import UIKit


class ListViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
         var names = ["Rache", "Sam"]
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView)-> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("name", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel!.text = names[indexPath.row]
        return cell
    }
   
    
    // Take in an array; Change list to an array (?)
    func fillConnections(nameArray: [String]) {
        for value in nameArray[0..<array.count] {
            // create table cell
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

} */
