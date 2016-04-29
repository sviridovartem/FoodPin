//
//  AddRestaurantController.swift
//  FoodPin
//
//  Created by Admin on 29.04.16.
//  Copyright © 2016 Sviridov. All rights reserved.
//

import UIKit

class AddTableViewController: UITableViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @IBOutlet var imageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            if UIImagePickerController.isSourceTypeAvailable(.PhotoLibrary) {
                let imagePicker = UIImagePickerController()
                imagePicker.allowsEditing = false
                imagePicker.sourceType = .PhotoLibrary
                imagePicker.delegate = self
                self.presentViewController(imagePicker, animated: true, completion:nil)
            }
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
        
        func imagePickerController(picker: UIImagePickerController,
                                   didFinishPickingMediaWithInfo info: [String : AnyObject]) {
            imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
            imageView.contentMode = UIViewContentMode.ScaleAspectFill
            imageView.clipsToBounds = true
            let leadingConstraint = NSLayoutConstraint(item: imageView, attribute:
                NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem:
                imageView.superview, attribute: NSLayoutAttribute.Leading, multiplier: 1,
                                     constant: 0)
            leadingConstraint.active = true
            let trailingConstraint = NSLayoutConstraint(item: imageView, attribute:
                NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem:
                imageView.superview, attribute: NSLayoutAttribute.Trailing, multiplier: 1,
                                     constant: 0)
            trailingConstraint.active = true
            let topConstraint = NSLayoutConstraint(item: imageView, attribute:
                NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem:imageView.superview, attribute: NSLayoutAttribute.Top, multiplier: 1, constant: 0)
            topConstraint.active = true
            let bottomConstraint = NSLayoutConstraint(item: imageView, attribute:
                NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem:
                imageView.superview, attribute: NSLayoutAttribute.Bottom, multiplier: 1,
                                     constant: 0)
            bottomConstraint.active = true
            dismissViewControllerAnimated(true, completion: nil)
        }
                
    }
}