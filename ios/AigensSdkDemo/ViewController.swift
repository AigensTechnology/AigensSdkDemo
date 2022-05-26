//
//  ViewController.swift
//  AigensSdkDemo
//
//  Created by Peter Liu on 23/5/2022.
//

import UIKit
import Foundation
import aigens_sdk_core

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openClicked(_ sender: Any) {
        
        let url = "https://scantest.aigens.com/scan?code=c3RvcmU9NTAwJnNwb3Q9MSZwYWdlPWJ5b2Q="
        
        let bridgeVC = WebContainerViewController()
        
        var options = [String: AnyObject]()
        options["url"] = url as AnyObject;
   
        bridgeVC.options = options;
        
        bridgeVC.modalPresentationStyle = .fullScreen
        self.present(bridgeVC, animated: true);
        
    }
    
}

