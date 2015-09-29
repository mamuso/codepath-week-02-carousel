//
//  LoginViewController.swift
//  codepath-week-02-carousel
//
//  Created by mmuno on 9/27/15.
//  Copyright © 2015 Manuel Muñoz Solera. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginUIView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var actionsView: UIView!
    
    var scrollViewOrigin = CGPoint(x: 0, y: 0)
    var actionsViewOrigin = CGPoint(x: 0, y: 0)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        scrollViewOrigin = loginUIView.center
        actionsViewOrigin = actionsView.center
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressBack(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        loginUIView.center.y = scrollViewOrigin.y - 68
        actionsView.center.y = actionsViewOrigin.y - 150
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        loginUIView.center.y = scrollViewOrigin.y
        actionsView.center.y = actionsViewOrigin.y
    }

    @IBAction func didPressLogin(sender: AnyObject) {
        if emailTextField.text == "" {
            // Alert
            let emailAlert = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: UIAlertControllerStyle.Alert)
            
            emailAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil))

            presentViewController(emailAlert, animated: true, completion: nil)
        } else {
            // Signing In Alert
            let signingInAlert = UIAlertController(title: "Signing in...", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
            
            presentViewController(signingInAlert, animated: true, completion: nil)
            
            delay(2, closure: { () -> () in
                self.dismissViewControllerAnimated(true, completion: nil)
                // Let's login!
                if self.emailTextField.text == "ha@ha.com" && self.passwordTextField.text == "ha" {
                    
                } else {
                    // OH NO Alert
                    let signingInAlert = UIAlertController(title: "Sign In Failed", message: "Incorrect email or password", preferredStyle: UIAlertControllerStyle.Alert)
                    signingInAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil))
                    self.presentViewController(signingInAlert, animated: true, completion: nil)
                }
            })
        }
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
