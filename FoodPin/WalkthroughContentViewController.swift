//
//  WalkthroughContentViewController.swift
//  FoodPin
//
//  Created by Admin on 30.04.16.
//  Copyright © 2016 Sviridov. All rights reserved.
//

import UIKit

class WalkthroughContentViewController: UIViewController,UIPageViewControllerDataSource {
    
    @IBOutlet var headingLabel:UILabel!
    @IBOutlet var contentLabel:UILabel!
    @IBOutlet var contentImageView:UIImageView!
    
    var index = 0
    var heading = ""
    var imageFile = ""
    var content = ""
    
    var pageHeadings = ["Personalize", "Locate", "Discover"]
    var pageImages = ["foodpin-intro-1", "foodpin-intro-2", "foodpin-intro-3"]
    var pageContent = ["Pin your favorite restaurants and create your own food guide", "Search and locate your favourite restaurant on Maps","Find restaurants pinned by your friends and other foodies around the world"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headingLabel.text = heading
        contentLabel.text = content
        contentImageView.image = UIImage(named: imageFile)
        dataSource = self
        if let startingViewController = viewControllerAtIndex(0) {
            setViewControllers([startingViewController], direction: .Forward,animated:true, completion:nil)
        }
    }
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pageViewController(pageViewController: UIPageViewController,
                            viewControllerAfterViewController viewController: UIViewController) ->
        UIViewController? {
            var index = (viewController as! WalkthroughContentViewController).index
            index += 1
            return viewControllerAtIndex(index)
    }
    func pageViewController(pageViewController: UIPageViewController,
                            viewControllerBeforeViewController viewController: UIViewController) ->
        UIViewController? {
            var index = (viewController as! WalkthroughContentViewController).index
            index -= 1
            return viewControllerAtIndex(index)
    }
    func viewControllerAtIndex(index: Int) -> WalkthroughContentViewController? {
        if index == NSNotFound || index < 0 || index >= pageHeadings.count {
            return nil
        }
        // Create a new view controller and pass suitable data.
        if let pageContentViewController =
            storyboard?.instantiateViewControllerWithIdentifier("WalkthroughContentViewController")
                as? WalkthroughContentViewController {
            pageContentViewController.imageFile = pageImages[index]
            pageContentViewController.heading = pageHeadings[index]
            pageContentViewController.content = pageContent[index]
            pageContentViewController.index = index
            return pageContentViewController
        }
        return nil }
}
