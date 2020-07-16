//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Ebubechukwu Dimobi on 14.07.2020.
//  Copyright © 2020 blazeapps. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    @IBOutlet weak var registerLabel: UIButton!
    @IBOutlet weak var loginLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = K.appName
        registerLabel.layer.cornerRadius =  registerLabel.frame.size.height / 2.5
        loginLabel.layer.cornerRadius =  loginLabel.frame.size.height / 2.5
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
}
