//
//  RegisterListView.swift
//  MessengerApp
//
//  Created by Виктор Куля on 22.05.2022.
//

import UIKit
import SnapKit

class RegisterListView: UIView {

    let anyLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.orange
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.systemGray2
        
        addSubview(anyLabel)
        
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeConstraints() {
        anyLabel.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(50)
            $0.leading.equalToSuperview().offset(50)
            $0.trailing.equalToSuperview().offset(-50)
            $0.bottom.equalToSuperview().offset(-50)
        }
    }
}
