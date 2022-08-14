//
//  HomeMainViewController.swift
//  EPCO
//
//  Created by 문정호 on 2022/08/14.
//

import UIKit

class HomeMainViewController: UIViewController {
    @IBOutlet weak var labelTitleEPCO: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAttributes()
    }
    
    
    func setAttributes(){
        labelTitleEPCO.setGradient(color1: UIColor(red: 0.627, green: 0.4, blue: 1, alpha: 1), color2: UIColor(red: 0.38, green: 0, blue: 1, alpha: 1), label: labelTitleEPCO)
    }



}
