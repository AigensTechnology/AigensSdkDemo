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
        
        var url = "https://scantest.aigens.com/scan?code=c3RvcmU9NTAwJnNwb3Q9MSZwYWdlPWJ5b2Q="
        
        url = "https://test.order.place/test/app/store/500?nocache=true";
        
        let bridgeVC = WebContainerViewController()
        
        var options = [String: AnyObject]()
        options["url"] = url as AnyObject;
   
        bridgeVC.options = options;
        
        bridgeVC.modalPresentationStyle = .fullScreen
        self.present(bridgeVC, animated: true);
        
    }
    
}

