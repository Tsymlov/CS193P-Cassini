//
//  ViewController.swift
//  Cassini
//
//  Created by Alexey Tsymlov on 8/7/15.
//  Copyright (c) 2015 Alexey Tsymlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController{
            if let identifier = segue.identifier{
                switch identifier{
                case "Earth":
                    ivc.imageURL = DemoURL.NASA.Earth
                    ivc.title = "Earth"
                case "Saturn":
                    ivc.imageURL = DemoURL.NASA.Saturn
                    ivc.title = "Saturn"
                case "Cassini":
                    ivc.imageURL = DemoURL.NASA.Cassini
                    ivc.title = "Cassini"
                default: break
                }
            }
        }
    }
}

