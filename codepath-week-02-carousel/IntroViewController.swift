//
//  IntroViewController.swift
//  codepath-week-02-carousel
//
//  Created by Manuel Muñoz Solera on 9/23/15.
//  Copyright © 2015 Manuel Muñoz Solera. All rights reserved.
//

import UIKit

class IntroViewController: ViewController, UIScrollViewDelegate {
    
    // Scroll Outlet
    @IBOutlet weak var scrollView: UIScrollView!
    // Image outlets
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var intro01ImageView: UIImageView!
    @IBOutlet weak var intro02ImageView: UIImageView!
    @IBOutlet weak var intro03ImageView: UIImageView!
    @IBOutlet weak var intro04ImageView: UIImageView!
    @IBOutlet weak var intro05ImageView: UIImageView!
    @IBOutlet weak var intro06ImageView: UIImageView!
    
    
    let minScroll:CGFloat = 0
    let maxScroll:CGFloat = 568
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setting up the scroll
        scrollView.contentSize = backgroundImageView.image!.size
        scrollView.delegate = self
        
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
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // Avoiding going off limits
        var scrollValue = (scrollView.contentOffset.y <= maxScroll) ? scrollView.contentOffset.y : maxScroll
        scrollValue = (scrollValue < 0) ? 0 : scrollValue
        
        // ----------------------------------
        // intro01ImageView Transformation
        // ----------------------------------
        let intro01angle = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: -10, r2Max: 0)
        let intro01scale = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 1, r2Max: 0.58)
        let intro01transformRotation = CGAffineTransformMakeRotation(CGFloat(intro01angle * CGFloat(M_PI) / CGFloat(180)))
        let intro01transformScale = CGAffineTransformMakeScale(intro01scale, intro01scale)
        let intro01x = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 48, r2Max: 161)
        let intro01y = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 432, r2Max: 940)
        
        intro01ImageView.center.x = intro01x
        intro01ImageView.center.y = intro01y
        intro01ImageView.transform = CGAffineTransformConcat(intro01transformRotation, intro01transformScale)
        
        // ----------------------------------
        // intro02ImageView Transformation
        // ----------------------------------
        let intro02angle = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: -10, r2Max: 0)
        let intro02scale = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 1, r2Max: 0.6)
        let intro02transformRotation = CGAffineTransformMakeRotation(CGFloat(intro02angle * CGFloat(M_PI) / CGFloat(180)))
        let intro02transformScale = CGAffineTransformMakeScale(intro02scale, intro02scale)
        let intro02x = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 137.5, r2Max: 239)
        let intro02y = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 450.5, r2Max: 940)
        
        intro02ImageView.center.x = intro02x
        intro02ImageView.center.y = intro02y
        intro02ImageView.transform = CGAffineTransformConcat(intro02transformRotation, intro02transformScale)
        
        // ----------------------------------
        // intro03ImageView Transformation
        // ----------------------------------
        let intro03angle = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 10, r2Max: 0)
        let intro03scale = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 1, r2Max: 0.58)
        let intro03transformRotation = CGAffineTransformMakeRotation(CGFloat(intro03angle * CGFloat(M_PI) / CGFloat(180)))
        let intro03transformScale = CGAffineTransformMakeScale(intro03scale, intro03scale)
        let intro03x = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 247.0, r2Max: 238.5)
        let intro03y = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 443, r2Max: 863.5)
        
        intro03ImageView.center.x = intro03x
        intro03ImageView.center.y = intro03y
        intro03ImageView.transform = CGAffineTransformConcat(intro03transformScale, intro03transformRotation)
        
        
        // ----------------------------------
        // intro04ImageView Transformation
        // ----------------------------------
        let intro04angle = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: -10, r2Max: 0)
        let intro04scale = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 1, r2Max: 1.06)
        let intro04transformRotation = CGAffineTransformMakeRotation(CGFloat(intro04angle * CGFloat(M_PI) / CGFloat(180)))
        let intro04transformScale = CGAffineTransformMakeScale(intro04scale, intro04scale)
        let intro04x = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 40, r2Max: 123)
        let intro04y = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 547, r2Max: 824)
        
        intro04ImageView.center.x = intro04x
        intro04ImageView.center.y = intro04y
        intro04ImageView.transform = CGAffineTransformConcat(intro04transformScale, intro04transformRotation)
        
        // ----------------------------------
        // intro05ImageView Transformation
        // ----------------------------------
        let intro05angle = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: -10, r2Max: 0)
        let intro05scale = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 1, r2Max: 0.6)
        let intro05transformRotation = CGAffineTransformMakeRotation(CGFloat(intro05angle * CGFloat(M_PI) / CGFloat(180)))
        let intro05transformScale = CGAffineTransformMakeScale(intro05scale, intro05scale)
        let intro05x = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 160.5, r2Max: 84)
        let intro05y = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 542.5, r2Max: 940)
        
        intro05ImageView.center.x = intro05x
        intro05ImageView.center.y = intro05y
        intro05ImageView.transform = CGAffineTransformConcat(intro05transformScale, intro05transformRotation)
        
        // ----------------------------------
        // intro06ImageView Transformation
        // ----------------------------------
        let intro06angle = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: -10, r2Max: 0)
        let intro06scale = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 1, r2Max: 0.6)
        let intro06transformRotation = CGAffineTransformMakeRotation(CGFloat(intro06angle * CGFloat(M_PI) / CGFloat(180)))
        let intro06transformScale = CGAffineTransformMakeScale(intro06scale, intro06scale)
        let intro06x = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 270.5, r2Max: 239)
        let intro06y = convertValue(scrollValue, r1Min: minScroll, r1Max: maxScroll, r2Min: 537.5, r2Max: 785.5)
        
        intro06ImageView.center.x = intro06x
        intro06ImageView.center.y = intro06y
        intro06ImageView.transform = CGAffineTransformConcat(intro06transformScale, intro06transformRotation)
        
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
