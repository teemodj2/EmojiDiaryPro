//
//  ViewController.swift
//  EmojiDiaryPro
//
//  Created by Лев Ильин on 21.05.2020.
//  Copyright © 2020 LevIlin. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {
    
    var moodPerson: [Smile] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return moodPerson.isEmpty ? 0 : moodPerson.count
          
      }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! EmojiTableViewCell

        let mood = moodPerson[indexPath.row]
        
        
        cell.dateLabel.text = mood.date
//        cell.imageOfEmoji.image = UIImage(data: mood.smileType)
        cell.occupationLabel.text = mood.occupation
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if  segue.identifier == "showDetail" {
                 
                guard let indexPath = tableView.indexPathForSelectedRow else { return }
                let mood = moodPerson[indexPath.row]
                let newMoodVC = segue.destination as! NewEmojiViewController
               
                
                
         }
    }

}
