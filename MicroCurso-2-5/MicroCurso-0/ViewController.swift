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
    
    var avatars = ["image1.png", "image2.png", "image3.png", "image4.png", "image5.png", "image6.png", "image7.png", "image8.png", "image9.png", "image10.png", "image11.png", "image12.png", "image13.png", "image14.png", "image15.png", "image16.png", "image17.png", "image18.png", "image19.png", "image20.png", "image21.png", "image22.png", "image23.png", "image24.png", "image25.png", "image26.png", "image27.png", "image28.png", "image29.png", "image30.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Regresamos el numero de secciones que deseamos, comunmente es 1.
        return firstNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        
        //Configuramos la celda
        cell.imageView?.image = UIImage(named: avatars[indexPath.row])
        cell.textLabel?.text = firstNames[indexPath.row]
        return cell
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}

