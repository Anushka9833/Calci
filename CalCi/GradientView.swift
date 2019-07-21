//
//  GradientView.swift
//  Gradients
//
//  Created by Anmol Kumar on 12/06/19.
//  Copyright © 2019 Anushka. All rights reserved.
//

import UIKit

@IBDesignable class GradientView: UIView {

    @IBInspectable var firstColor : UIColor = UIColor.clear{
        didSet{
            updateview()
        }
        
    }
    @IBInspectable var secondColor : UIColor = UIColor.clear{
        didSet{
            updateview()
        }
    }
    
    override  class var layerClass: AnyClass {
        get
        {
            return CAGradientLayer.self
        }
    }
   
    
    func updateview(){
        let layer = self.layer as! CAGradientLayer
        layer.colors = [firstColor.cgColor,secondColor.cgColor]
        
        
//        layer.locations = [0 , 0.8]
        //[x,y] x define the start of 1st color and y defines the start of 2nd color from top or (1-y) is the ratio of screen covered by 2nd color
        
//        
//        layer.startPoint = CGPoint(x: 0, y: 0)
//        layer.endPoint = CGPoint(x: 1, y: 0.5)
//        start point defines the starting point of 1st color and endpoint defines the ending point of 2nd color . It gives direction to the gradient.
    }
    
    
}
