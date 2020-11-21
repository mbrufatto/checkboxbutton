//
//  CheckBoxButton.swift
//  ButtonsCNHAndTG
//
//  Created by Marcio Habigzang Brufatto on 21/11/20.
//

import Foundation
import UIKit

protocol CheckBoxButtonDelegate {
    func didSelectedButton(isChecked: Bool, sender: CheckBoxButton)
}

class CheckBoxButton: UIButton {
    let checkedImage = UIImage(named: "ic_check_box")! as UIImage
    let uncheckedImage = UIImage(named: "ic_check_box_outline_blank")! as UIImage
    var delegate: CheckBoxButtonDelegate?
    
    var isChecked: Bool = false {
        didSet {
            if isChecked {
                self.setImage(checkedImage, for: .normal)
                self.backgroundColor = .black
                self.setTitleColor(.white, for: .normal)
                self.setupLayout()
            } else {
                self.setImage(uncheckedImage, for: .normal)
                self.backgroundColor = .white
                self.setTitleColor(.black, for: .normal)
                self.layer.borderWidth = 1.0
                self.layer.borderColor = UIColor.black.cgColor
                self.setupLayout()
            }
        }
    }
    
    init(title: String) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.addTarget(self, action: #selector(buttonClicked(sender:)), for: .touchUpInside)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
            delegate?.didSelectedButton(isChecked: isChecked, sender: self)
        }
    }
    
    private func setupLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.imageView?.translatesAutoresizingMaskIntoConstraints = false
        
        self.imageView?.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: (-self.frame.width + 50)).isActive = true
        self.imageView?.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0.0).isActive = true
    }
}
