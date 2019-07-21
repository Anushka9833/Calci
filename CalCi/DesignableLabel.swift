//
//  DesignableLabel.swift
//  CalCi
//
//  Created by Anmol Kumar on 25/06/19.
//  Copyright © 2019 Anushka. All rights reserved.
//

import UIKit

@IBDesignable   class DesignableLabel: UILabel {
    
    
    
    //MARK:- Border Properties
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor : UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    
    
    //MARK:- Shadow Properties
    
    @IBInspectable var shadowcolor: UIColor = .clear{
        didSet{
            self.layer.shadowColor = shadowcolor.cgColor
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0{
        didSet{
            self.layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var shadowoffset: CGSize = CGSize(width: 0, height: 0){
        didSet{
            self.layer.shadowOffset = shadowoffset
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0{
        didSet{
            self.layer.shadowOpacity = shadowOpacity
        }
    }


}
