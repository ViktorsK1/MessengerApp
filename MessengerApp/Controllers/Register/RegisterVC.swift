//
//  RegisterViewController.swift
//  MessengerApp
//
//  Created by Виктор Куля on 21.05.2022.
//

import UIKit

class RegisterVC: UIViewController {

    private let registerView = RegisterView()
    
    override func loadView() {
        self.view = registerView
        setupNavigationController()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        registerView.startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
        registerView.nameTextField.delegate = self
    }
    

    // MARK: - Navigation
    func setupNavigationController() {
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
        
        navigationItem.title = "Старт"
        
        //            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonPressed))
        //            navigationItem.rightBarButtonItem?.tintColor = .white
        
    }
    // MARK: - startButton pressed
    
    @objc private func startButtonTapped() {
        
        registerView.nameTextField.resignFirstResponder()
        
        guard let name = registerView.nameTextField.text, !name.description.isEmpty, name.count >= 3 else {
            alertUserStartError()
            return
        }
        
        //Firebase start
    }
    
    //MARK: call alert than name wasn't added in textField
    
    private func alertUserStartError() {
        let alert = UIAlertController(title: "Предупреждение", message: "Пожалуйста введите свое имя для продолжения", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Отменить", style: .cancel, handler: .none))
        present(alert, animated: true, completion: .none)
    }

}

extension RegisterVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
