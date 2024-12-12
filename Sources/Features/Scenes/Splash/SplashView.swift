//
//  SplashView.swift
//  Nearby
//
//  Created by Jenifer Rocha on 11/12/24.
//

import UIKit

class SplashView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let logoImageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "logoImage")
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    let backgroundImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "backgroundImage")
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    private func setupUI() {
        self.addSubview(logoImageView)
        self.addSubview(backgroundImage)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
