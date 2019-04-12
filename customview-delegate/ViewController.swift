//
//  ViewController.swift
//  customview-delegate
//
//  Created by kaichan on 4/12/19.
//  Copyright © 2019 Kaito Hattori. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CustomViewDelegate {
    
    @IBOutlet weak var customView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.customView.delegate = self
    }

    func didClickButton(_ sender: Any) {
        print("clicked button on custom view: didClickButton(_ sender: Any)")
    }
    
    func customView(_ customView: CustomView, didClicked sender: Any) {
        print("clicked button on custom view: customView(_ customView: CustomView, didClicked sender: Any)")
    }
}

