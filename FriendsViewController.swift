//
//  FriendsViewController.swift
//  seeker
//
//  Created by Rachel Markell on 2/6/16.
//  Copyright (c) 2016 SARD. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController {

    @IBOutlet weak var taylorImageView: UIImageView!
    @IBOutlet weak var taylor2: UIImageView!
    @IBOutlet weak var taylor3: UIImageView!
    @IBOutlet weak var taylor4: UIImageView!
    @IBOutlet weak var taylor5: UIImageView!
    
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
        // Do any additional setup after loading the view.
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
