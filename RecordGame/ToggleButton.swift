//
//  ToggleButton.swift
//  RecordGame
//
//  Created by Scott Latsa on 3/26/15.
//  Copyright (c) 2015 Scott Latsa. All rights reserved.
//

import UIKit

class ToggleButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init()
    }
    
    override func drawRect(rect: CGRect) {

        var context = UIGraphicsGetCurrentContext();
        
        // Draw
        CGContextStrokePath(context);

    }
}
