//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Admin on 28.04.16.
//  Copyright © 2016 Sviridov. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet var backgroundImageView:UIImageView!
    @IBOutlet var ratingStackView:UIStackView!
    
    var rating:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        ratingStackView.transform = CGAffineTransformMakeScale(0.0, 0.0)
    }

    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.3,
                                   initialSpringVelocity: 0.5, options: [], animations: {
                                    self.ratingStackView.transform = CGAffineTransformIdentity
            }, completion: nil)
    }
    @IBAction func ratingSelected(sender: UIButton) {
        switch (sender.tag) {
        case 100: rating = "dislike"
        case 200: rating = "good"
        case 300: rating = "great"
        default: break
        }
        performSegueWithIdentifier("unwindToDetailView", sender: sender)
    }
}
