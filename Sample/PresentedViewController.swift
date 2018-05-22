//
//  PresentedViewController.swift
//  Sample
//
//  Created by Evgene Podkorytov on 26.09.17.
//  Copyright © 2017 iEvgen Podkorytov. All rights reserved.
//

import UIKit

class PresentedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view.backgroundColor = UIColor.green
    }
    
    fileprivate func close() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
