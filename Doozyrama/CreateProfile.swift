//
//  CreateCrofile.swift
//  Doozyrama
//
//  Created by Max on 31.01.17.
//  Copyright © 2017 Mikhail. All rights reserved.
//

import UIKit

class CreateProfile: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!

    var array: NSArray = []
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CreateProfileCell!
        
        return cell!
    }
   
}
