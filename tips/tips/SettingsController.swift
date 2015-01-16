//
//  settingsController.swift
//  tips
//
//  Created by Dan Fessler on 1/15/15.
//  Copyright (c) 2015 Dan Fessler. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {
    

    @IBOutlet weak var defaultTipSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadDefaults()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func defaultTipChanged(sender: AnyObject) {
        saveDefaults()
    }
    
    func loadDefaults() {
        var defaults = NSUserDefaults.standardUserDefaults()
        var intValue = defaults.integerForKey("defaultTip")
        
        println(intValue)
        defaultTipSegmentedControl.selectedSegmentIndex = intValue
    }
    
    func saveDefaults() {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTipSegmentedControl.selectedSegmentIndex, forKey: "defaultTip")
        defaults.synchronize()
    }

}