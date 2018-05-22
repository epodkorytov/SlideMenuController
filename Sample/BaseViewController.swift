//
//  BaseViewController.swift
//  Sample
//
//  Created by Evgene Podkorytov on 25.09.17.
//  Copyright © 2017 iEvgen Podkorytov. All rights reserved.
//

import UIKit
import SlideMenuController

class BaseViewController: UIViewController {
    let menuVC = MenuViewController()
    override func loadView() {
        super.loadView()
        
        let barBtnMenu = UIBarButtonItem(title: "Menu", style: .plain, target: self, action: #selector(menuTap))
        self.navigationItem.setLeftBarButton(barBtnMenu, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view.backgroundColor = UIColor.red
        
        
        
        let menuVC = MenuViewController()
        menuVC.willPresentDetail = {
            //let detailVC = PresentedViewController()
            //self.navigationController?.ro //pushViewController(detailVC, animated: true)
            //UIApplication.sharedApplication().keyWindow.rootViewController
        }
        let menuNavController = UISideMenuNavigationController(rootViewController: menuVC)
        menuNavController.navigationBar.isHidden = true
        
        SideMenuManager.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        SideMenuManager.menuPresentMode = .menuSlideIn
        SideMenuManager.menuFadeStatusBar = false
        
        SideMenuManager.menuLeftNavigationController = menuNavController
        SideMenuManager.menuRightNavigationController = nil
    }
    
    
    @objc func menuTap() {
        print("Menu Tap")
        present(SideMenuManager.menuLeftNavigationController!, animated: true, completion: nil)
    }
    
}
