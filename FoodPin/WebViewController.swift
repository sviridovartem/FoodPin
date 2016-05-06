//
//  WebViewController.swift
//  FoodPin
//
//  Created by Admin on 06.05.16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    
    @IBOutlet var webView:UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = NSURL(string: "http://www.apple.com") {
            let request = NSURLRequest(URL: url)
            webView.loadRequest(request)
        }
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
