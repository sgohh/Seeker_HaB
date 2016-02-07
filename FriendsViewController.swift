//
//  FriendsViewController.swift
//  seeker
//
//  Created by Rachel Markell on 2/6/16.
//  Copyright (c) 2016 SARD. All rights reserved.
//

import UIKit
import Firebase

class FriendsViewController: UIViewController, UINavigationBarDelegate {

    @IBOutlet weak var taylorImageView: UIImageView!
    @IBOutlet weak var taylor2: UIImageView!
    @IBOutlet weak var taylor3: UIImageView!
    @IBOutlet weak var taylor4: UIImageView!
    @IBOutlet weak var taylor5: UIImageView!
    
    @IBOutlet weak var friend1: UIButton!
    @IBOutlet weak var friend2: UIButton!
    @IBOutlet weak var friend3: UIButton!
    @IBOutlet weak var friend4: UIButton!
    @IBOutlet weak var friend5: UIButton!
    
    let user = User.sharedInstance
    
    func changeImage(newImage: UIImageView){
        newImage.layer.masksToBounds = false
        newImage.layer.cornerRadius = newImage.frame.size.height/2
        newImage.contentMode = UIViewContentMode.ScaleAspectFill
        newImage.clipsToBounds = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeImage(taylorImageView)
        changeImage(taylor2)
        changeImage(taylor3)
        changeImage(taylor4)
        changeImage(taylor5)
        
        var profileUserName = self.user.profileUserName
        
        // Do any additional setup after loading the view.
        var url = "https://boiling-inferno-2905.firebaseio.com/userName"
        let ref = Firebase(url: url)
        let userRef = ref.childByAppendingPath(profileUserName)
        userRef.observeSingleEventOfType(.Value, withBlock: {snapshot in
            if(snapshot.value.objectForKey("friends") != nil){
                let dict = snapshot.value.objectForKey("friends")! 
     
                for var i = 0; i < dict.count; i++ {
                    print(dict[i])
                }
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
          self.title = "Friends"
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
