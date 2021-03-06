//
//  ViewController.swift
//  AigensSdkDemo
//
//  Created by Peter Liu on 23/5/2022.
//

import UIKit
import Foundation
import AigensSdkCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openClicked(_ sender: Any) {
        
        var url = "https://scantest.aigens.com/scan?code=c3RvcmU9NTAwJnNwb3Q9MSZwYWdlPWJ5b2Q="
        
        
        let bridgeVC = WebContainerViewController()
        
        var options = [String: Any]()
        options["url"] = url
        
        let member:Dictionary<String, Any> = [
        
            "memberCode" : "<crmMemberId>",
            "source" : "<merchant>",
            "sessionId" : "<sessionId>"
            
        ]
        
        options["member"] = member
        
        bridgeVC.options = options;
        
        bridgeVC.modalPresentationStyle = .fullScreen
        self.present(bridgeVC, animated: true);
        
    }
    
}

