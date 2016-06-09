//
//  ViewController.swift
//  EasyWayToSwitchContainerViews
//
//  Created by Mike Woelmer on 6/9/16.
//  Copyright © 2016 atomicobject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var containerViewA: UIView!
    @IBOutlet weak var containerViewB: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showComponent(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            UIView.animateWithDuration(0.5, animations: {
                self.containerViewA.alpha = 1
                self.containerViewB.alpha = 0
            })
        } else {
            UIView.animateWithDuration(0.5, animations: {
                self.containerViewA.alpha = 0
                self.containerViewB.alpha = 1
            })
        }
    }
}

