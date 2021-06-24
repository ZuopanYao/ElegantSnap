//
//  ViewController.swift
//  Example-iOS
//
//  Created by Harvey on 2021/5/20.
//  Copyright © 2021 Harvey/姚作潘. All rights reserved.
//

import UIKit
import ElegantSnap
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let v = UIView()
        v.backgroundColor = .red
//        view.addSubview(v) {
//            $0.top(200).leading(100).width(100).height(200).end()
//        }
        
//
        view.make { $0.equalToSuperview() }
        view.addSubview(v, constraints: [.top(200), .leading(100), .height(200), .width(100)])
    }
}

