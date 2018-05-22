//
//  MenuViewController.swift
//  Sample
//
//  Created by Evgene Podkorytov on 26.09.17.
//  Copyright © 2017 iEvgen Podkorytov. All rights reserved.
//

import UIKit
import SlideMenuController

class MenuViewController: UIViewController {
    
    var willPresentDetail: (() -> Swift.Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view.backgroundColor = UIColor.yellow
        
        let btn = UIButton()
            btn.addTarget(self, action: #selector(presentDetail), for: .touchUpInside)
            btn.setTitle("Present Detail", for: .normal)
            btn.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(btn)
        
        btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        btn.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        
    }
    
    @objc fileprivate func presentDetail() {
        print("presentDetail Tap")
        willPresentDetail?()
    }
    
}
