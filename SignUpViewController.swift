//
//  SignUpViewController.swift
//  seeker
//
//  Created by Rachel Markell on 2/6/16.
//  Copyright (c) 2016 SARD. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var traid: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var aid: UILabel!
    let user = User.sharedInstance
    @IBOutlet weak var bottom: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.delegate = self
        // Do any additional setup after loading the view.
      //  traid.textColor = UIColor(red: 0.698, green: 0.07, blue: 0.208, alpha: 1.0)
        aid.textColor = UIColor(red: 0.129, green: 0.604, blue: 0.8, alpha: 1.0)
        bottom.backgroundColor = UIColor(red: 0.129, green: 0.604, blue: 0.8, alpha: 1.0)
    }
    
   // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        passwordTextField.text = textField.text
    }
    
    
    
    @IBAction func submit(sender: AnyObject) {
        // TRY TO CHANGE TEXT BORDER COLOR ??
//        let myColor: UIColor = UIColor(red: 0.5, green: 0.5, blue: 0, alpha: 1)
//        if (nameTextField.text == "")  {
//            //|| (phoneTextField.text = nil) || (usernameTextField.text = nil) || (passwordTextField.text = nil) {
//            //nameTextField.layer.borderColor = myColor.CGColor
//            let border = CALayer()
//            
//            border.borderColor = UIColor.redColor().CGColor
//        } else {
        
        
        var mypassword = passwordTextField.text
        var phone = phoneTextField.text
        var username = usernameTextField.text
        self.user.profileUserName = username
        var name = nameTextField.text
        
        var url = "https://boiling-inferno-2905.firebaseio.com/userName"
        
        let ref = Firebase(url: url)
        var newUser = ["name": name, "phone number": phone, "password": mypassword]
        ref.childByAppendingPath(username).setValue(newUser)
        
        let userRef = ref.childByAppendingPath("itsaftermidnight")
        userRef.observeSingleEventOfType(.Value, withBlock: {snapshot in
                print(snapshot.value.objectForKey("name"))})
    //}
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
