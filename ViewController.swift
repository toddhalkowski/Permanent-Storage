//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Todd Halkowski
//  Uses NSUserDefaults to demonstrate persistent storage
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("Todd", forKey: "name")
        
        var name = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String
        
        println(name)
        
        var arr = [1,2,3]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        var recalledArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        println(recalledArray[2])
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
