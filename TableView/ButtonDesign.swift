//
//  ButtonDesign.swift
//  TableView
//
//  Created by 樋口大樹 on 2020/08/23.
//  Copyright © 2020 樋口大樹. All rights reserved.
//

import UIKit

class Info_Design : UIButton{
    override func draw(_ rect: CGRect) {
        //Top part
        var startPoint_X = rect.width/3
        var startPoint_Y = rect.height/8
        var width_rect   = rect.width/3
        var height_rect  = rect.height/8
        var rectangle = UIBezierPath(rect: CGRect(x: startPoint_X, y: startPoint_Y, width: width_rect, height: height_rect))
        ColorManager().my_black().setStroke()
        ColorManager().my_black().setFill()
        rectangle.lineWidth = 1.0
        rectangle.stroke()
        rectangle.fill()
        
        //Buttom part
        startPoint_X = rect.width/3
        startPoint_Y = rect.height*3/8
        width_rect   = rect.width/3
        height_rect  = rect.height*4/8
        rectangle = UIBezierPath(rect: CGRect(x: startPoint_X, y: startPoint_Y, width: width_rect, height: height_rect))
        ColorManager().my_black().setStroke()
        ColorManager().my_black().setFill()
        rectangle.lineWidth = 1.0
        rectangle.stroke()
        rectangle.fill()
    }
}
