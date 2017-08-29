//
//  UsersTableViewController.swift
//  MicroCurso-TV-0
//
//  Created by Germán Santos Jaimes on 8/29/17.
//  Copyright © 2017 iosLab FI-UNAM. All rights reserved.
//

import UIKit

class UsersTableViewController: UITableViewController {

    var firstNames = ["Elden", "Gradey", "Sharyl", "Simonne", "Victoir", "Kaila", "Lisbeth", "Aubine", "Sissie", "Dena", "Cortie", "Tabbie", "Mommy", "Fanchon", "Olwen", "Christian", "Nat", "Devan", "Farlee", "Evyn", "Norri", "Carmine", "Mordecai", "Leeann", "Leshia", "Leo", "Edouard", "Roxy", "Vonny", "Celka"]
    
    var lastNames = ["James", "Hucklesby", "Venour", "Frean", "Mothersole", "Poetz", "Matejka", "Eastment", "Shirland", "Eyre", "Oldacres", "McVie", "Birth", "McEllen", "Wimsett", "Wordsley", "Tilbrook", "Cabedo", "Leyden", "Matzl", "Stritton", "Buyers", "Brimman", "Glacken", "Gelardi", "Gotecliffe", "Giacopetti", "Mandal", "Sakins", "MacCracken", "Jobson"]
    
    var avatars = ["image1.png", "image2.png", "image3.png", "image4.png", "image5.png", "image6.png", "image7.png", "image8.png", "image9.png", "image10.png", "image11.png", "image12.png", "image13.png", "image14.png", "image15.png", "image16.png", "image17.png", "image18.png", "image19.png", "image20.png", "image21.png", "image22.png", "image23.png", "image24.png", "image25.png", "image26.png", "image27.png", "image28.png", "image29.png", "image30.png"]
    
    var emails = ["btouhig0@baidu.com", "dfibbitts1@bandcamp.com", "mleveridge2@t-online.de", "wbill3@canalblog.com", "cbuckingham4@globo.com", "jgumby5@huffingtonpost.com", "bdollman6@addthis.com", "hoattes7@thetimes.co.uk", "mvuitton8@illinois.edu", "imatschke9@wordpress.com", "lsturgea@engadget.com", "dcliffordb@state.gov", "tpescudc@wiley.com", "gadicotd@vinaora.com", "agouldsmithe@moonfruit.com", "jdunkirkf@pcworld.com", "lfranciscog@eventbrite.com", "tmccrainorh@woothemes.com", "lparkini@usatoday.com", "cbrattenj@guardian.co.uk", "cnevettk@cafepress.com", "gsangral@scribd.com", "egotmannm@google.ru", "hmacafeen@taobao.com", "lpielo@dyndns.org", "cbernardyp@nhs.uk", "ncuffeq@latimes.com", "wservanter@salon.com", "acampbelldunlops@hostgator.com", "asollemet@vkontakte.ru"]
    
    var usersCheckin = Array(repeating: false, count:30)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return firstNames.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let optionMenu = UIAlertController(title: nil, message: "¿Desea algo?", preferredStyle:
//            .actionSheet)
        
        // Add Call action
//        let callActionHandler = { (action:UIAlertAction!) -> Void in
//            let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .alert)
//            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//            self.present(alertMessage, animated: true, completion: nil) }
//        let callAction = UIAlertAction(title: "\(emails[indexPath.row])", style: .default, handler: callActionHandler)
//        
        
        // Check-in action
//        let checkInAction = UIAlertAction(title: "Check in", style: .default, handler: {
//            (action:UIAlertAction!) -> Void in
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = .checkmark
//        })
        
        
        let optionMenu = UIAlertController(title: nil, message: "Enviar correo", preferredStyle:
            .alert)
        
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        
        let checkInTitle = usersCheckin[indexPath.row] ? "Undo Check in" : "Check in"
        let checkInAction = UIAlertAction(title: checkInTitle, style: .default, handler: {
            (action:UIAlertAction!) -> Void in
            
            let cell = tableView.cellForRow(at: indexPath)
            
            // Toggle check-in and undo-check-in
            self.usersCheckin[indexPath.row] = self.usersCheckin[indexPath.row] ? false : true
            cell?.accessoryType = self.usersCheckin[indexPath.row] ? .checkmark : .none
        })
        
        
        
        optionMenu.addAction(cancelAction)
        //optionMenu.addAction(callAction)
        optionMenu.addAction(checkInAction)
        
        //tableView.deselectRow(at: indexPath, animated: false)
        present(optionMenu, animated: true, completion: nil)
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Celda"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! UsersTableViewCell
        // Configure the cell...
        cell.firstNameLabel.text = firstNames[indexPath.row]
        cell.avatarImageView.image = UIImage(named: avatars[indexPath.row])
//        cell.avatarImageView.layer.cornerRadius = 30.0
//        cell.avatarImageView.clipsToBounds = true
        cell.lastNameLabel.text = lastNames[indexPath.row]
        cell.emailLabel.text = emails[indexPath.row]

        
        //Corrige el error
//        if usersCheckin[indexPath.row] {
//            cell.accessoryType = .checkmark
//        } else {
//             cell.accessoryType = .none
//        }
        
        
        return cell
    }
    
//    override var prefersStatusBarHidden: Bool {
//        return true
//    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            // Delete the row from the data source 
                firstNames.remove(at: indexPath.row)
                lastNames.remove(at: indexPath.row)
                emails.remove(at: indexPath.row)
                usersCheckin.remove(at: indexPath.row)
                avatars.remove(at: indexPath.row)
        }
        tableView.reloadData()
    
    }
    

}
