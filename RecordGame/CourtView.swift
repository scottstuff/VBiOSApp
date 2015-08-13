//
//  CourtView.swift
//  RecordGame
//
//  Created by Scott Latsa on 3/25/15.
//  Copyright (c) 2015 Scott Latsa. All rights reserved.
//

import UIKit

class CourtView: UIView {

    //    @IBInspectable
    var courtOutline:UIColor = UIColor.blackColor()
    //    @IBInspectable
    var courtInBounds:UIColor = UIColor.blueColor()
    //    @IBInspectable
    var courtOutBounds:UIColor = UIColor.redColor()
    //    @IBInspectable
    var courtOutlineSize: CGFloat = 17
    
    override func drawRect(rect: CGRect) {

        let h = rect.height
        let w = rect.width
        let courtOrigin: CGPoint = CGPointMake(0.0, 0.0)
        
        let courtSize: CGSize = CGSizeMake(w * 0.7, h)
        
        var drect = CGRect(origin: courtOrigin, size: courtSize)
        var bpath:UIBezierPath = UIBezierPath(rect: drect)
        
        courtOutline.setStroke()
        courtInBounds.setFill()

        bpath.lineWidth = courtOutlineSize
        bpath.stroke()
        bpath.fill()

        NSLog("drawRect has updated the view")

    }

}
