//
//  HomeView.swift
//  ButtonsCNHAndTG
//
//  Created by Marcio Habigzang Brufatto on 21/11/20.
//

import UIKit

class HomeView: UIView {
    
    var checkButton: CheckBoxButton! //= CheckBoxButton()
    var checkButton2: CheckBoxButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        setupCheckButton()
        setupCheckButton2()
        
    }
    
    override func awakeFromNib() {
        self.layoutIfNeeded()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
    
    func setupCheckButton() {
        checkButton = CheckBoxButton(title: "CNH")
        self.addSubview(checkButton)
        
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 200).isActive = true
        checkButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        checkButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        checkButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.1).isActive = true
        checkButton.isChecked = false
        
        checkButton.delegate = self
    }
    
    func setupCheckButton2() {
        checkButton2 = CheckBoxButton(title: "RG")
        self.addSubview(checkButton2)
        
        checkButton2.translatesAutoresizingMaskIntoConstraints = false
        checkButton2.topAnchor.constraint(equalTo: self.checkButton.bottomAnchor, constant: 16).isActive = true
        checkButton2.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        checkButton2.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        checkButton2.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.1).isActive = true

        checkButton2.isChecked = false
        checkButton2.delegate = self
    }

}

extension HomeView: CheckBoxButtonDelegate {
    func didSelectedButton(isChecked: Bool, sender: CheckBoxButton) {
        if sender == checkButton2 {
            print(sender.isChecked)
        } else if sender == checkButton {
            print(sender.isChecked)
        }
    }
}
