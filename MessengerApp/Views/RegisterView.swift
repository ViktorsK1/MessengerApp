//
//  LoginView.swift
//  MessengerApp
//
//  Created by Виктор Куля on 22.05.2022.
//

import UIKit
import SnapKit

class RegisterView: UIView {

    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = " Имя:"
        label.textAlignment = .center
        label.backgroundColor = UIColor.systemTeal
        label.textColor = UIColor.black
//        label.layer.cornerRadius = 6
//        label.layer.borderWidth = 1
//        label.layer.borderColor = UIColor.white.cgColor
        label.layer.masksToBounds = true
        return label
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = " Введите ваше имя..."
        textField.backgroundColor = UIColor.white
        textField.autocapitalizationType = .words
        textField.autocorrectionType = .no
        textField.returnKeyType = .done
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGray3.cgColor
        return textField
    }()
    
    let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Старт", for: .normal)
        button.backgroundColor = UIColor.systemOrange
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        return button
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.systemTeal
        
        addSubview(nameLabel)
        
        addSubview(nameTextField)
        
        addSubview(startButton)
        
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeConstraints() {
        
        nameLabel.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(140)
            $0.leading.equalToSuperview().offset(5)
            $0.trailing.equalTo(nameTextField.snp.leading).offset(-5)
            $0.height.equalTo(40)
        }
        
        nameTextField.snp.makeConstraints {
            $0.top.equalToSuperview().offset(140)
            $0.leading.equalToSuperview().offset(60)
            $0.trailing.equalToSuperview().offset(-60)
            $0.height.equalTo(40)
        }
        
        startButton.snp.makeConstraints() {
            $0.top.equalTo(nameTextField.snp.bottom).offset(50)
            $0.leading.equalToSuperview().offset(60)
            $0.trailing.equalToSuperview().offset(-60)
//            $0.bottom.equalToSuperview().offset(-250)
            $0.height.equalTo(40)
        }
        
    }
    
}
