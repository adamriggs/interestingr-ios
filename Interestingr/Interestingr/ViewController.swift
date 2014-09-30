//
//  ViewController.swift
//  Interestingr
//
//  Created by Adam Riggs on 9/29/14.
//  Copyright (c) 2014 Adam Riggs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var mainImage: UIImageView
    
    let screenSize: CGRect = UIScreen.mainScreen().bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url = NSURL.URLWithString("https://farm6.staticflickr.com/5557/15057740736_00fc1f196a.jpg");
        var err: NSError?
        var imageData :NSData = NSData.dataWithContentsOfURL(url,options: NSDataReadingOptions.DataReadingMappedIfSafe, error: &err)
        
        mainImage.contentMode = .ScaleAspectFit
        
        var image = UIImage(data:imageData)
        
        let size = CGSizeApplyAffineTransform(image.size, CGAffineTransformMakeScale(0.5, 0.5))
        let hasAlpha = false
        let scale: CGFloat = 0.0 // Automatically use scale factor of main screen
        
        UIGraphicsBeginImageContextWithOptions(size, !hasAlpha, scale)
        image.drawInRect(CGRect(origin: CGPointZero, size: size))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        
        mainImage.image = scaledImage
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

