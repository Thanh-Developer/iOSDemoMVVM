//
//  HomeViewController.swift
//  LoginMVVM
//
//  Created by John Pham on 10/3/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableViewContact: UITableView!
    
    var contact = [
        ["Tí", "Tèo", "Hùng", "Lam", "Thuỷ", "Tuấn", "Trung", "Hạnh"],
        ["Bình", "Khánh", "Toàn", "Tâm", "An", "Hương", "Huy", "Quang", "Vân", "Đài", "Tiến"]
    ]
    
    var titles: [String] = ["iOS", "Android"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        tableViewContact.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableViewContact.delegate = self
        tableViewContact.dataSource = self
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return contact.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = contact[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Contact: \(contact[indexPath.section][indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titles[section]
    }
    
}
