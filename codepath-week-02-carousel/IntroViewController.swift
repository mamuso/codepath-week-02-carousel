//
//  IntroViewController.swift
//  codepath-week-02-carousel
//
//  Created by Manuel Muñoz Solera on 9/23/15.
//  Copyright © 2015 Manuel Muñoz Solera. All rights reserved.
//

import UIKit

class IntroViewController: ViewController {

    // Scroll Outlet
    @IBOutlet weak var scrollView: UIScrollView!
    // Image outlets
    @IBOutlet weak var intro01ImageView: UIImageView!
    @IBOutlet weak var intro02ImageView: UIImageView!
    @IBOutlet weak var intro03ImageView: UIImageView!
    @IBOutlet weak var intro04ImageView: UIImageView!
    @IBOutlet weak var intro05ImageView: UIImageView!
    @IBOutlet weak var intro06ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setting up the images.
        intro01ImageView.transform = CGAffineTransformMakeRotation(CGFloat(10 * M_PI / 180))
        intro02ImageView.transform = CGAffineTransformMakeRotation(CGFloat(-10 * M_PI / 180))
        intro03ImageView.transform = CGAffineTransformMakeRotation(CGFloat(10 * M_PI / 180))
        intro04ImageView.transform = CGAffineTransformMakeRotation(CGFloat(-10 * M_PI / 180))
        intro05ImageView.transform = CGAffineTransformMakeRotation(CGFloat(10 * M_PI / 180))
        intro06ImageView.transform = CGAffineTransformMakeRotation(CGFloat(-10 * M_PI / 180))
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
