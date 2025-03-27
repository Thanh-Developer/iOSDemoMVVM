//
//  LoginViewController.swift
//  LoginMVVM
//
//  Created by John Pham on 25/3/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnLogin.clipsToBounds = true
        btnLogin.layer.cornerRadius = 10
        btnLogin.backgroundColor = UIColor.lightGray
    }
    
    
    @IBAction func loginClick(_ sender: Any) {
        if userName.text?.isEmpty ?? true || password.text?.isEmpty ?? true {
            let alert = UIAlertController(title: "Error", message: "Username or password is empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Success", message: "Login successfully", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: openHomeViewController))
            present(alert, animated: true, completion: nil)
        }
    }
    
    private func openHomeViewController(action: UIAlertAction) {
        let vc = ViewController()
        vc.user = userName.text ?? ""
        //        navigationController?.pushViewController(vc, animated: true)
        present(vc, animated: true, completion: nil)
    }
}
