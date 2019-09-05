//
//  URLHandler.swift
//  Second
//
//  Created by Ivan Erwin Lopez Ansaldo on 9/5/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import UIKit

typealias URLOpening = (URL, [UIApplication.OpenExternalURLOptionsKey:Any], ((Bool) -> Void)?) -> Void

protocol ApplicationProtocol {
    func open(_ url: URL, options: [UIApplication.OpenExternalURLOptionsKey:Any], completionHandler completion: ((Bool) -> Void)?)
}

//extension UIApplication: ApplicationProtocol {}

struct URLHandler {
//    let application: ApplicationProtocol
    let urlOpener: URLOpening = UIApplication.shared.open
    
    func open(url: URL) {
        if url.absoluteString.hasPrefix("internal://") {
            print("Open Internal Resources...")
        } else {
//            application.open(url, options: [:], completionHandler: nil)
            urlOpener(url, [:], nil)
        }
    }
}
