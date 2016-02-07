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

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.delegate = self
        // Do any additional setup after loading the view.
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
        var mypassword = passwordTextField.text
        var phone = phoneTextField.text
        var username = usernameTextField.text
        var name = nameTextField.text
        
        var url = "https://boiling-inferno-2905.firebaseio.com/userName"
        
        let ref = Firebase(url: url)
        var newUser = ["name": name, "phone number": phone, "password": mypassword]
        ref.childByAppendingPath(username).setValue(newUser)
        
        let userRef = ref.childByAppendingPath("itsaftermidnight")
        userRef.observeSingleEventOfType(.Value, withBlock: {snapshot in
                print(snapshot.value.objectForKey("name"))
        })

        
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
