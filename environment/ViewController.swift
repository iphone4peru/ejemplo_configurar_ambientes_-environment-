//
//  ViewController.swift
//  environment
//
//  Created by Christian Quicano on 7/24/17.
//  Copyright © 2017 Academia moviles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(Util.currentEnvironment())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

