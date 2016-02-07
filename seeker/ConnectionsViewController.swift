//
//  ConnectionsViewController.swift
//  seeker
//
//  Created by Rachel Markell on 2/6/16.
//  Copyright (c) 2016 SARD. All rights reserved.
//

import UIKit

class ConnectionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let nav = self.navigationController {
           // nav.tabBarItem.title = "Connects"
        }

        // Do any additional setup after loading the view.
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("testing")
        if let nav = self.navigationController {
           // nav.tabBarItem.title = "Connects"
        }
     //   self.tabBarItem.image = UIImage(named: "profile.png")
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

}
