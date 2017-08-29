//
//  ViewController.swift
//  MicroCurso-0
//
//  Created by Germán Santos Jaimes on 8/28/17.
//  Copyright © 2017 iosLab FI-UNAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var firstNames = ["Elden", "Gradey", "Sharyl", "Simonne", "Victoir", "Kaila", "Lisbeth", "Aubine", "Sissie", "Dena", "Cortie", "Tabbie", "Mommy", "Fanchon", "Olwen", "Christian", "Nat", "Devan", "Farlee", "Evyn", "Norri", "Carmine", "Mordecai", "Leeann", "Leshia", "Leo", "Edouard", "Roxy", "Vonny", "Celka"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return firstNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = firstNames[indexPath.row]
        return cell
    }

}

