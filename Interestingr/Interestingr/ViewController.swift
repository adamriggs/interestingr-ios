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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        var urlString:String = "https://farm6.staticflickr.com/5557/15057740736_00fc1f196a.jpg"
//        var url:NSURL = NSURL.URLWithString(urlString)
//        //println("url=="+interestingnessArray[id])
//        mainImage.image = NSImage(byReferencingURL: url)
        
        var url = NSURL.URLWithString("https://farm6.staticflickr.com/5557/15057740736_00fc1f196a.jpg");
        var err: NSError?
        var imageData :NSData = NSData.dataWithContentsOfURL(url,options: NSDataReadingOptions.DataReadingMappedIfSafe, error: &err)
        mainImage.image = UIImage(data:imageData)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scaleImage(){
        
    }


}

