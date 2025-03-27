//
//  ProfileViewController.swift
//  LoginMVVM
//
//  Created by John Pham on 10/3/25.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var labelUser: UILabel!
    
    var user: String = "UserName"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelUser.text = user
    }
    
    @IBAction func tapAction(_ sender: Any) {
        let tap:UITapGestureRecognizer =  sender as! UITapGestureRecognizer
        print(tap.location(in: self.view))
        let img = UIImageView(image: UIImage(named: "1"))
        img.frame.size = CGSize(width: 50, height: 50)
        img.center = tap.location(in: self.view)
        view.addSubview(img)
    }
    
}
