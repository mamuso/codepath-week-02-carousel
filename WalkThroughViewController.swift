//
//  WalkThroughViewController.swift
//  codepath-week-02-carousel
//
//  Created by mmuno on 9/28/15.
//  Copyright © 2015 Manuel Muñoz Solera. All rights reserved.
//

import UIKit

class WalkThroughViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var actionsView: UIView!
    
    var actionsOrigin:CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setting up the scroll
        scrollView.delegate = self
        scrollView.frame.size.width = 320
        scrollView.contentSize.width = 1280

        // setting up the actions view
        actionsOrigin = actionsView.center.y
        actionsView.center = CGPoint(x: actionsView.center.x, y: actionsOrigin + 110)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Scroll functions
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        pageControl.currentPage = page
        UIView.animateWithDuration(0.2) { () -> Void in
            if page == 3 {
                self.actionsView.center = CGPoint(x: self.actionsView.center.x, y: self.actionsOrigin)
            } else {
                self.actionsView.center = CGPoint(x: self.actionsView.center.x, y: self.actionsOrigin + 110)
            }
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
