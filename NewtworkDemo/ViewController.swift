//
//  ViewController.swift
//  NewtworkDemo
//
//  Created by Bablu Joshi on 19/10/18.
//  Copyright © 2018 BJ. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GetAllToDos().execute(onSuccess: { (data) in
            print(data)
        }) { (err) in
            print(err)
        }
        
    }

}

