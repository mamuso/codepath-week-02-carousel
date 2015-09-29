//
//  SignUpViewController.swift
//  codepath-week-02-carousel
//
//  Created by mmuno on 9/28/15.
//  Copyright © 2015 Manuel Muñoz Solera. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var loginUIView: UIScrollView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var actionsView: UIView!
    @IBOutlet weak var formFieldsView: UIView!
    @IBOutlet weak var checkButton: UIButton!
    
    
    var scrollViewOrigin = CGPoint(x: 0, y: 0)
    var actionsViewOrigin = CGPoint(x: 0, y: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Scaling/fading the form view
        formFieldsView.alpha = 0
        formFieldsView.transform = CGAffineTransformMakeScale(0.6, 0.6)
        
        UIView.animateWithDuration(0.3) { () -> Void in
            self.formFieldsView.alpha = 1
            self.formFieldsView.transform = CGAffineTransformMakeScale(1.0, 1.0)
        }
        
        scrollViewOrigin = loginUIView.center
        actionsViewOrigin = actionsView.center
        
        loginUIView.contentSize.height = 520
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
        loginUIView.center.y = scrollViewOrigin.y - 20
        actionsView.center.y = actionsViewOrigin.y - 200
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        actionsView.center.y = actionsViewOrigin.y
    }
    
    @IBAction func didPressCreate(sender: AnyObject) {
        if firstNameTextField.text == "" || lastNameTextField.text == "" || emailTextField.text == "" || passwordTextField.text == "" || checkButton.selected == false {
            // Alert
            let emailAlert = UIAlertController(title: "All fields required", message: "Please review the form", preferredStyle: UIAlertControllerStyle.Alert)
            
            emailAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil))
            
            presentViewController(emailAlert, animated: true, completion: nil)
        } else {
            // Signing In Alert
            let signingInAlert = UIAlertController(title: "Creating account...", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
            
            presentViewController(signingInAlert, animated: true, completion: nil)
            
            delay(2, closure: { () -> () in
                self.dismissViewControllerAnimated(true, completion: nil)
                self.performSegueWithIdentifier("walkTroughSegue", sender: nil)
            })
        }
    }
    
    @IBAction func didPressCheckbox(sender: AnyObject) {
        checkButton.selected = (checkButton.selected ? false : true)
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
