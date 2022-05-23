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
        // Do any additional setup after loading the view.
    }

    @IBAction func openClicked(_ sender: Any) {
        
       
        let url = "https://test.order.place/order/store/5764191071764480/mode/takeaway?back=true";
        
        let bridgeVC = WebContainerViewController()
        
        var options = [String: AnyObject]()
        options["url"] = url as AnyObject;
   
        bridgeVC.options = options;
        
        bridgeVC.modalPresentationStyle = .popover
        self.present(bridgeVC, animated: true);
    }
    
}

