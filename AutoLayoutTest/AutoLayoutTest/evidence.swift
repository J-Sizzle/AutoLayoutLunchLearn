//
//  evidence.swift
//  AutoLayoutTest
//
//  Created by Catherine Robinson on 1/7/15.
//  Copyright (c) 2015 me. All rights reserved.
//

import UIKit

class Evidence : UIView{
    
    required init(coder aDecoder: (NSCoder!)) {
        super.init(coder: aDecoder)
        
        var nibView = NSBundle.mainBundle().loadNibNamed("evidence", owner: self, options: nil)[0] as UIView
        nibView.frame = self.bounds;
        self.addSubview(nibView)
        
        
    }
    
}
