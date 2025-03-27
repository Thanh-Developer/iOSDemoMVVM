//
//  MessageViewController.swift
//  LoginMVVM
//
//  Created by John Pham on 10/3/25.
//

import UIKit
import WebKit

class MessageViewController: UIViewController {

    @IBOutlet weak var imgLoadWeb: UIImageView!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var webKit: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            let url = URL(string: "https://picjumbo.com/wp-content/uploads/fall-background-with-space-for-text-free-image.jpeg")
            let data = try Data(contentsOf: url!)
            imgLoadWeb.image = UIImage(data: data)
        } catch {
            print("Error: \(error)")
        }
        
        
        webKit.load(URLRequest(url: URL(string: "https://zingmp3.vn")!))
    }

    @IBAction func actionSlideView(_ sender: Any) {
        view.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
}
