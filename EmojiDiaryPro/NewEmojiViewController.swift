//
//  NewEmojiViewController.swift
//  EmojiDiaryPro
//
//  Created by Лев Ильин on 23.05.2020.
//  Copyright © 2020 LevIlin. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class NewEmojiViewController: UITableViewController {
    
    var moodPerson: [Smile] = []

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    //Save current date
    
    func prepareDate() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "dd/M/yyyy, H:mm"
        dateFormatter.timeZone = NSTimeZone(name: "UTC") as TimeZone?

        let dateString = dateFormatter.string(from: date)
        return dateString
        
    }
    
    func saveSmileType(smileType: String) {
           let appDelegate = UIApplication.shared.delegate as! AppDelegate
           let context = appDelegate.persistentContainer.viewContext
           
           let entity = NSEntityDescription.entity(forEntityName: "Smile", in: context)
           let taskObject = NSManagedObject(entity: entity!, insertInto: context) as! Smile
           taskObject.smileType = smileType
           
           do {
               try context.save()
               moodPerson.append(taskObject)
               print("Saved smile Type")
           } catch {
               print(error.localizedDescription)
           }
       }
       
       // Current Date
//       func currentDate() {
//           let date = Date()
//           let dateFormatter = DateFormatter()
//
//           dateFormatter.dateFormat = "dd/M/yyyy, H:mm"
//           dateFormatter.timeZone = NSTimeZone(name: "UTC") as TimeZone?
//
//           let dateString = dateFormatter.string(from: date)
//           dateLabel.text = "Сегодня \(dateString)"
//
//
//       }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
