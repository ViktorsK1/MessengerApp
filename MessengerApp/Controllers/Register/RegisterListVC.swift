//
//  LoginViewController.swift
//  MessengerApp
//
//  Created by Виктор Куля on 21.05.2022.
//

import UIKit

class RegisterListVC: UIViewController {
    
    private let registerListView = RegisterListView()
    
    override func loadView() {
        self.view = registerListView
        setupNavigationController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    // MARK: - Navigation
    private func setupNavigationController() {
        navigationController?.navigationBar.barTintColor = UIColor.systemBlue
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.tintColor = .white
        
        if #available(iOS 15.0, *) {
            let navigationBarAppearance = UINavigationBarAppearance()
            navigationBarAppearance.backgroundColor = UIColor.systemGray3
            navigationBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
            navigationController?.navigationBar.standardAppearance = navigationBarAppearance
            navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance
        }
        
        navigationItem.title = "Список пользователей"
        
        //            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonPressed))
        //            navigationItem.rightBarButtonItem?.tintColor = .white
        
    }

}
