//
//  ViewController.swift
//  MessengerApp
//
//  Created by Виктор Куля on 21.05.2022.
//

import UIKit

class DialoguesVC: UIViewController {

    private let mainView = View()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLogedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !(isLogedIn) {
            
        }
        
    }


}

