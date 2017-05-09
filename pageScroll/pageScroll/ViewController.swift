//
//  ViewController.swift
//  pageScroll
//
//  Created by chuxiang zhou on 5/6/17.
//  Copyright © 2017 chuxiang zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var scrollview: UIScrollView!
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var contentWidth: CGFloat = 0.0
        for x in 0...2 {
            let icon = UIImage(named: "icon\(x)")
            
            let imageview = UIImageView(image: icon)
            
            images.append(imageview)
            
            var newX:CGFloat = 0.0
            
            newX = scrollview.frame.size.width / 2 + scrollview.frame.size.width*CGFloat(x)
            
            contentWidth += newX
            scrollview.addSubview(imageview)

            imageview.frame = CGRect(x:newX-75, y: (view.frame.size.height / 2)-75, width:150, height:150 )
          
        }
       // scrollview.backgroundColor = UIColor.purple
        scrollview.clipsToBounds = false
        scrollview.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        print("content width: \(contentWidth)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

