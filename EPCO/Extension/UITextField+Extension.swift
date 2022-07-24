//
//  UITextField+Extension.swift
//  EPCO
//
//  Created by 문정호 on 2022/07/17.
//

import Foundation
import UIKit

extension UITextField {
    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0 , y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
    
    func addleftimage(image:UIImage) {
        let leftimage = UIImageView(frame: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
        leftimage.tintColor = .black
        leftimage.image = image
        self.leftView = leftimage
        self.leftViewMode = .always
    }
}
