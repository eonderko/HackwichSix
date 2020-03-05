//
//  ViewController.swift
//  HackwichSix
//
//  Created by CM Student on 3/3/20.
//  Copyright © 2020 Eli Onderko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return countries.count
    
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = countries[indexPath.row]
        cell.textLabel?.text = text
        cell.detailTextLabel?.text = friendsHomeArray[indexPath.row]
        return cell
        
    }
    
    var myFriends = ["Ethan", "Tim", "Brian"]
    
    var countries = ["Finland", "Japan", "Germany"]
    
    var friendsHomeArray = ["Helsinki", "Tokyo", "Cologne"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

