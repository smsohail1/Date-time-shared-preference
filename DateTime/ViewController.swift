//
//  ViewController.swift
//  DateTime
//
//  Created by Abdul Ahad on 6/5/17.
//  Copyright © 2017 Abdul Ahad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   // @IBOutlet weak var labe: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm:ss";
        let result = formatter.string(from: date)
        print("\(result)");
        
        let preferences_write = UserDefaults.standard
        
        let currentLevel = "sohail"
        let currentLevelKey = "currentLevel"
        preferences_write.set(currentLevel, forKey: currentLevelKey)
        
        preferences_write.synchronize()
        
        
        let preferences = UserDefaults.standard
        
       // let currentLevelKey = "currentLevel"
        if preferences.object(forKey: currentLevelKey) == nil {
            //  Doesn't exist        
            print("null")
            
        } else {
            let currentLevel1 = preferences.string(forKey: currentLevelKey)
            print(currentLevel1 ?? "sss")
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


   
}

