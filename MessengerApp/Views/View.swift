//
//  View.swift
//  MessengerApp
//
//  Created by Виктор Куля on 21.05.2022.
//

import UIKit
import SnapKit

class View: UIView {
    
    let label: UILabel = {
        let label = UILabel()
        label.backgroundColor = .red
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(label)
        
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeConstraints() {
        label.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
