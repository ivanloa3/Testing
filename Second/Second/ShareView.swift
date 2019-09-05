//
//  ShareView.swift
//  Second
//
//  Created by Ivan Erwin Lopez Ansaldo on 9/5/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import UIKit

class ShareView: UIView {
    
    var shareAction: (String) -> Void
    var textField: UITextField = {
        var tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.placeholder = "Text input ..."
        return tf
    }()
    let heightScreen = Double(UIScreen.main.bounds.height)
    let widthScreen = Double(UIScreen.main.bounds.width)
    
    init(shareAction: @escaping (String) -> Void) {
        self.shareAction = shareAction
        super.init(frame: .zero)
        backgroundColor = .white
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setupTextField()
        createButton()
    }
    
    private func setupTextField() {
        let width = 200.0
        let height = 50.0
        textField.frame = CGRect(x: ((widthScreen-width)/2), y: (heightScreen/2)-height, width: width, height: height)
        addSubview(textField)
    }
    
    private func createButton() {
        let width = 200.0
        let height = 50.0
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        button.layer.cornerRadius = 5.0
        button.tintColor = .white
        button.setTitle("Click me to share Text...", for: .normal)
        button.frame = CGRect(x: ((widthScreen-width)/2), y: (heightScreen/1.8), width: width, height: height)
        button.addTarget(self, action: #selector(shareTapped), for: .touchUpInside)
        addSubview(button)
    }
    
    @objc func shareTapped() {
        guard let text = textField.text else {return}
        shareAction(text)
    }
}
