//
//  GFButton.swift
//  GitHFollowers
//
//  Created by Melih Bey on 26.05.2025.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init() {
        self.init(frame: .zero)
        configuration?.baseBackgroundColor = .systemBackground
        configuration?.baseForegroundColor = .systemBackground
    }
    
    convenience init(color:UIColor, title: String, systemImageName: String) {
        self.init(frame: .zero)
        set(color: color, title: title, systemImageName: systemImageName)
    }
    
    private func configure() {
        configuration = .tinted()
        configuration?.cornerStyle = .medium
        configuration?.imagePadding = 6
        configuration?.imagePlacement = .leading
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    final func set(color: UIColor, title: String, systemImageName: String) {
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = color
        configuration?.title = title
        configuration?.image = UIImage(systemName: systemImageName)
        
    }
    
}
