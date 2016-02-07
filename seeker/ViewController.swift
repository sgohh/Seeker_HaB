//
//  ViewController.swift
//  seeker
//
//  Created by Rachel Markell on 2/6/16.
//  Copyright (c) 2016 SARD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var taylorImageView: UIImageView!
   
    func changeImage(newImage: UIImageView){
        newImage.layer.masksToBounds = false
        newImage.layer.cornerRadius = newImage.frame.size.height/2
        newImage.contentMode = UIViewContentMode.ScaleAspectFill
        newImage.clipsToBounds = true
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        changeImage(taylorImageView)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

