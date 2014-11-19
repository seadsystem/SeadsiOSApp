//
//  ViewController.swift
//  SeadsApplication
//
//  Created by Brittany Hope Arthur on 11/18/14.
//  Copyright (c) 2014 Brittany Hope Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UsernameTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBAction func RegistrationDirectionsButton(sender: UIButton) {
        return
        
    }
    @IBAction func VerifyLoginCredentials(sender: AnyObject)
    {
        //temp for testing
        var user = "brit"
        var password = "seads"
        if(UsernameTextField.text == user && PasswordTextField.text == password)
        {
            println("Credentials were correct");
            self.dismissViewControllerAnimated(true, completion: nil)
        }else{
            println("Credentials were not correct");
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var nextVC: LoginVC = segue.destinationViewController as LoginVC
        
        nextVC.recievedText = UsernameTextField.text
    }
    


}

