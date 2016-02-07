//
//  ProfileViewController.swift
//  seeker
//
//  Created by Rachel Markell on 2/6/16.
//  Copyright (c) 2016 SARD. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         changeImage(taylorImageView)

        // Do any additional setup after loading the view.
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       // self.navigationController!.tabBarItem.title = "Profile!"
     //   self.tabBarItem.image = UIImage(named: "profile.png")
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeImage(newImage: UIImageView){
        newImage.layer.masksToBounds = false
        newImage.layer.cornerRadius = newImage.frame.size.height/2
        newImage.contentMode = UIViewContentMode.ScaleAspectFill
        newImage.clipsToBounds = true
        
    }
    
    @IBOutlet weak var taylorImageView: UIImageView!
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
