//
//  ViewController.swift
//  EmojiDiaryPro
//
//  Created by Лев Ильин on 21.05.2020.
//  Copyright © 2020 LevIlin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 1
          
      }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! EmojiTableViewCell

        return cell
    }

}
