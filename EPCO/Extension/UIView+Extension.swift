//
//  UIView+Extension.swift
//  EPCO
//
//  Created by 문정호 on 2022/07/16.
//

import UIKit

extension UIView{
    @IBInspectable var cornerRadius : CGFloat{
        get {
                return layer.cornerRadius
            }
            set {
                layer.cornerRadius = newValue
                layer.masksToBounds = newValue > 0
            }
    }
    
}
