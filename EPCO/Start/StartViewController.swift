//
//  ViewController.swift
//  EPCO
//
//  Created by 문정호 on 2022/07/16.
//

import UIKit

class StartViewController: UIViewController {
    @IBOutlet var startView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAttributes()
        
    }
    func setupAttributes(){
        startView.setGradient(color1: UIColor(red: 0.627, green: 0.4, blue: 1, alpha: 1), color2: UIColor(red: 0.38, green: 0, blue: 1, alpha: 1), view: startView)
        loginButton.layer.borderWidth = 2
        loginButton.layer.borderColor = UIColor(red: 0.628, green: 0.4, blue: 1, alpha: 1).cgColor
    }
    
    @IBAction func loginButtonDidTap(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let startLoginViewController = storyboard.instantiateViewController(withIdentifier: "StartLoginVC") as! StartLoginViewController
        if let presentationController = startLoginViewController.presentationController as? UISheetPresentationController{
            presentationController.detents = [.medium()]
        }
        self.present(startLoginViewController, animated: true)
    }
    
    @IBAction func signUpButtonDidTap(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let startSignUpViewController = storyboard.instantiateViewController(withIdentifier: "startSignUpVC") as! StartSignUPViewController
        self.present(startSignUpViewController, animated: true)
        
    }
    

}

