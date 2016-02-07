//
//  AddFamilyViewController.swift
//  seeker
//
//  Created by Rachel Markell on 2/6/16.
//  Copyright (c) 2016 SARD. All rights reserved.
//

import UIKit
import Firebase

class AddFamilyViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    let user = User.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }

    @IBAction func SeekFam(sender: AnyObject) {
        var newFam = username.text
        var profileUserName: String = self.user.profileUserName!
        
        var url = "https://boiling-inferno-2905.firebaseio.com/userName"
        
        let ref = Firebase(url: url)
        var newUser = ["connections": profileUserName]
        ref.childByAppendingPath(newFam + "/connections").setValue(newUser)
        
        var newUser2 = ["family": newFam]
        ref.childByAppendingPath(profileUserName + "/family").setValue(newUser2)

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
