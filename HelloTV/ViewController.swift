//
//  ViewController.swift
//  HelloTV
//
//  Created by Stefanie Knapp on 2/19/16.
//  Copyright © 2016 Stefanie Knapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //1
        let dateComponents =
        NSCalendar.currentCalendar().components(.Hour,
            fromDate: NSDate())
        let hour = dateComponents.hour
        //2
        let greetingString: String
        switch hour {
        case 0..<12:
            greetingString = "Good Morning"
        case 12..<17:
            greetingString = "Good Afternoon"
        default:
            greetingString = "Good Evening"
        }
        label.text = "\(greetingString), World!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
