//
//  StartupGame.swift
//  Assignment
//
//  Created by Vaishali Kulkarni on 2016-10-10.
//  Copyright © 2016 Default Profile. All rights reserved.
//

import UIKit
import AVFoundation

class FrontPage: UIViewController {
    
    var audio = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
self.view.backgroundColor = UIColor(patternImage: UIImage(named:"2.jpg")!)
        // Do any additional setup after loading the view.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
