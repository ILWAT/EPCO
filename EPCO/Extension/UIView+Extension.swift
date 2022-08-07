//
//  UIView+Extension.swift
//  EPCO
//
//  Created by 문정호 on 2022/07/16.
//

import UIKit

extension UIView{
    //모서리 둥글게 하는 inspectable 띄우기
    @IBInspectable var cornerRadius : CGFloat{
        get {
                return layer.cornerRadius
            }
            set {
                layer.cornerRadius = newValue
                layer.masksToBounds = newValue > 0
            }
    }
    
    //그라데이션 설정
    func setGradient(color1:UIColor, color2:UIColor, view:UIView){
        let gradient: CAGradientLayer = CAGradientLayer()
        //그라데이션 색을 정의
        gradient.colors = [color1.cgColor, color2.cgColor]
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradient.endPoint = CGPoint(x: 0.75, y: 0.5)
        gradient.frame = bounds
        gradient.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 0.55, b: 1, c: -1, d: 1.04, tx: 0.74, ty: -0.52))
        gradient.bounds = view.bounds.insetBy(dx: -0.5*view.bounds.size.width, dy: -0.5*view.bounds.size.height)
        layer.insertSublayer(gradient, at: 0) //레이어를 맨밑에 삽입
    }
}
