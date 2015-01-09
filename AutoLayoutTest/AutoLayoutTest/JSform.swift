//
//  JSform.swift
//  AutoLayoutTest
//
//  Created by jeremy shelly on 12/29/14.
//  Copyright (c) 2014 me. All rights reserved.
//

import UIKit

class JSform : UIView {
    required init(coder aDecoder: (NSCoder!)) {
        super.init(coder: aDecoder)
        var nibView = NSBundle.mainBundle().loadNibNamed("form", owner: self, options: nil)[0] as UIView
        nibView.frame = self.bounds;
        self.addSubview(nibView)
        
        
//        addSubview(NSBundle.mainBundle().loadNibNamed("form", owner: self, options: nil)[0] as UIView)
        
    }
}
