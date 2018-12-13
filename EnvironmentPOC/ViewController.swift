//
//  ViewController.swift
//  EnvironmentPOC
//
//  Created by Govindarajan Anand on 12/13/18.
//  Copyright © 2018 JohnDeere. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let server_url = Environment().configuration(PlistKey.ServerURL)
        print(server_url)
    }


}

