//
//  UILabel+Extension.swift
//  EPCO
//
//  Created by 문정호 on 2022/08/14.
//

import Foundation
import UIKit


extension UILabel{
    func setGradient(color1:UIColor, color2:UIColor, label:UILabel){
        //그라데이션 정의
        let gradient: CAGradientLayer = CAGradientLayer()
        //그라데이션 색을 정의
        gradient.colors = [color1.cgColor, color2.cgColor]
        //그라데이션을 어디서 부터 어디까지 적용할건지 가장 왼쪽이 0 가장 오른쪽이 1
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradient.endPoint = CGPoint(x: 0.75, y: 0.5)
        gradient.frame = bounds
        gradient.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0.55, b: 1, c: -1, d: 1.04, tx: 0.74, ty: -0.52))
        gradient.bounds = label.bounds.insetBy(dx: -0.5*label.bounds.size.width, dy: -0.5*label.bounds.size.height)
        label.layer.mask=gradient
        
    }
}
