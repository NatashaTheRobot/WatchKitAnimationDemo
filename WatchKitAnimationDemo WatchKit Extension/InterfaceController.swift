//
//  InterfaceController.swift
//  WatchKitAnimationDemo WatchKit Extension
//
//  Created by Natasha Murashev on 11/24/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var minionsFunImage: WKInterfaceImage!
    
    override init(context: AnyObject?) {
        // Initialize variables here.
        super.init(context: context)
        
        minionsFunImage.setImageNamed("frame")
        
        // Use this for Default Settings
        //minionsFunImage.startAnimating()
        
        minionsFunImage.startAnimatingWithImagesInRange(
            NSRange(location: 0, length: 132),
            duration: 5,
            repeatCount: 1)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
        

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

}
