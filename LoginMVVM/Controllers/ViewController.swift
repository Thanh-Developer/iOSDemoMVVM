//
//  ViewController.swift
//  LoginMVVM
//
//  Created by John Pham on 10/3/25.
//

import UIKit

class ViewController: UIViewController {
    
    var user: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Home
        let homeVC = HomeViewController()
        let homeNavi = UINavigationController(rootViewController: homeVC)
        homeNavi.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        
        // Messages
        let messagesVC = MessageViewController()
        let messagesNavi = UINavigationController(rootViewController: messagesVC)
        messagesNavi.tabBarItem = UITabBarItem(title: "Messages", image: UIImage(systemName: "message"), tag: 1)
        
        // Friends
        let friendsVC = FriendViewController()
        let friendsNavi = UINavigationController(rootViewController: friendsVC)
        friendsNavi.tabBarItem = UITabBarItem(title: "Friends", image: UIImage(systemName: "person.2"), tag: 2)
        
        // Profile
        let profileVC = ProfileViewController()
        profileVC.user = user
        let profileNavi = UINavigationController(rootViewController: profileVC)
        profileNavi.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 3)
        
        // TabBarController
        let tabbarController = UITabBarController()
        tabbarController.viewControllers = [homeNavi, messagesNavi, friendsNavi, profileNavi]
        
        // Add TabBarController as a child view controller
        addChild(tabbarController)
        view.addSubview(tabbarController.view)
        tabbarController.view.frame = view.bounds
        tabbarController.didMove(toParent: self)
    }
    
    
}

