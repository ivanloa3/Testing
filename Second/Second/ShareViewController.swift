//
//  ViewController.swift
//  Second
//
//  Created by Ivan Erwin Lopez Ansaldo on 8/27/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    override func loadView() {
        view = ShareView { [weak self] in
            self?.shareContent(text: $0)
        }
    }
    
    func shareContent(text: String) {
        print("Share content with ... \(text)")
    }
}

