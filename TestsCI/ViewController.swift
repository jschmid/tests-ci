//
//  ViewController.swift
//  TestsCI
//
//  Created by Jonas Schmid on 18/12/15.
//  Copyright © 2015 schmid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage.Asset.Monkey.image
        let imageView = UIImageView(image: image)
        
        self.view.addSubview(imageView)
    }
}

