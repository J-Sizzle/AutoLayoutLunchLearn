//
//  ViewController.swift
//  AutoLayoutTest
//
//  Created by jeremy shelly on 12/29/14.
//  Copyright (c) 2014 me. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FormDelegate {

    //adding refernce so I can use its protocol methods
    @IBOutlet weak var formView: JSform!
    
    @IBOutlet weak var centerVerticalConstraint: NSLayoutConstraint!
    @IBOutlet weak var centerHorizontalConstraint: NSLayoutConstraint!
    
    var halfWidth:CGFloat!
    var halfHeight:CGFloat!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formView.delegate = self;
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        halfHeight = 200
        halfWidth = 150
        
        
        // Do any additional setup after loading the view, typically from a nib.
        centerHorizontalConstraint.constant = -halfHeight;
        centerVerticalConstraint.constant = halfWidth;
        UIView.animateWithDuration(1.5, animations: { () in
            self.view.layoutIfNeeded()
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func submitFormPressed() {
        //delegate method for the JSform's protocol
        println("Form Button Pressed")
    }


    @IBAction func centerVerticalPressed(sender: AnyObject) {
        centerHorizontalConstraint.constant = 0;
        UIView.animateWithDuration(1.5, animations: { () in
            self.view.layoutIfNeeded()
        })
    }
    @IBAction func downPressed(sender: AnyObject) {
        centerHorizontalConstraint.constant = -halfWidth;
        UIView.animateWithDuration(1.5, animations: { () in
            self.view.layoutIfNeeded()
        })
        
        
    }
    @IBAction func upPressed(sender: AnyObject) {
        centerHorizontalConstraint.constant = halfWidth;
        UIView.animateWithDuration(1.5, animations: { () in
            self.view.layoutIfNeeded()
        })
    }
    
    @IBAction func centerPressed(sender: AnyObject) {
        centerVerticalConstraint.constant = 0;
        UIView.animateWithDuration(1.5, animations: { () in
            self.view.layoutIfNeeded()
        })
    }
    @IBAction func rightPressed(sender: AnyObject) {
        centerVerticalConstraint.constant = -halfHeight;
        UIView.animateWithDuration(1.5, animations: { () in
            self.view.layoutIfNeeded()
        })
    }
    @IBAction func leftPressed(sender: AnyObject) {
        centerVerticalConstraint.constant = halfHeight;
        UIView.animateWithDuration(1.5, animations: { () in
            self.view.layoutIfNeeded()
        })
    }
}

