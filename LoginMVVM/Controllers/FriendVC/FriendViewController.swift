//
//  FriendViewController.swift
//  LoginMVVM
//
//  Created by John Pham on 10/3/25.
//

import UIKit

class FriendViewController: UIViewController {

    @IBOutlet weak var uiImageView: UIImageView!
    @IBOutlet weak var buttonNext: UIButton!
    @IBOutlet weak var buttonBack: UIButton!
    
    let arrImage = ["1","2","3","4","5","6","7","8"]
    var position = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func nextClick(_ sender: Any) {
        if position == arrImage.count - 1 {
            position = 0
        } else {
            position = position + 1
        }
        uiImageView.image = UIImage(named: arrImage[position])
    }
    
    @IBAction func backClick(_ sender: Any) {
        if position == 0 {
            position = arrImage.count - 1
        } else {
            position = position - 1
        }
        uiImageView.image = UIImage(named: arrImage[position])
    }
}
